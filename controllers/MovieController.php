<?php

namespace app\controllers;

use Yii;
use app\models\Movie;
use app\Models\MovieSearch;
use app\components\imdb;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * MovieController implements the CRUD actions for Movie model.
 */
class MovieController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Movie models.
     * @return mixed
     */
    public function actionIndex($id)
    {
        $model = Movie::findOne($id); 
        $movie = 'old movie';
        if(Movie::findOne($id) === null){
            return $this->render('generating');           

            $movie = $this->generateMovieFromIMDB($id);       
        }

        return $this->render('index', [
            'model' => $model,
            'movie' => $movie,
        ]);
    }

    /**
     * Displays a single Movie model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Movie model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Movie();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->title_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Movie model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->title_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Movie model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionSearch($search_movie)
    {
        $imdb = new Imdb();
        echo $title = str_replace(' ','+',trim($search_movie));
        return $this->render('search', [
                'model'=>empty($title)? 'empty' : $imdb->listIMDbIdFromSearch($title)
            ]);
    }

    /**
     * Finds the Movie model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Movie the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Movie::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    protected function generateMovieFromIMDB($id){
        $imdb = new Imdb();
        $movie_new = $imdb->getMovieInfo($id);
        if($movie_new['response']!='ok'){
            return $movie_new['response'];
        }else{
            $this->saveMovie($movie_new);
        }
    }

    protected function saveMovie($movie_new){
        $model = new Movie();
        $movie_new['votes'] = intval(str_replace(',','',$movie_new['votes']));
        $movie_new['release_date'] = date('Y-m-d', strtotime($movie_new['release_date']));
        $model->setAttributes($movie_new, false);
        $model->created_at = $model->updated_at = time();
        $model->save();
        // print_r($movie_new);
        // print_r($model);
    }

}
