.class Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
.super Landroid/os/AsyncTask;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodePartialBitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/RectF;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mDecoder:Landroid/graphics/BitmapRegionDecoder;

.field final synthetic this$0:Lcom/android/camera/ui/ZoomView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ZoomView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p2, "x1"    # Lcom/android/camera/ui/ZoomView$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/android/camera/ui/ZoomView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "params"    # [Landroid/graphics/RectF;

    .prologue
    .line 63
    const/4 v4, 0x0

    aget-object v11, p1, v4

    .line 67
    .local v11, "endRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v4}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)Ljava/io/InputStream;

    move-result-object v16

    .line 68
    .local v16, "isForDimensions":Ljava/io/InputStream;
    if-nez v16, :cond_0

    .line 69
    const/4 v4, 0x0

    .line 160
    :goto_0
    return-object v4

    .line 72
    :cond_0
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/FilmstripItemUtils;->decodeBitmapDimension(Ljava/io/InputStream;)Landroid/graphics/Point;

    move-result-object v13

    .line 74
    .local v13, "imageSize":Landroid/graphics/Point;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    if-nez v13, :cond_1

    .line 79
    const/4 v4, 0x0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v10

    .line 76
    .local v10, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/ui/ZoomView;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "exception closing dimensions inputstream"

    invoke-static {v4, v5, v10}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 82
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v12, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v13, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, v13, Landroid/graphics/Point;->y:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-direct {v12, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    .local v12, "fullResRect":Landroid/graphics/RectF;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    .local v20, "rotationMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v4}, Lcom/android/camera/ui/ZoomView;->access$300(Lcom/android/camera/ui/ZoomView;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 85
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 88
    iget v4, v12, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, v12, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 89
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v13, Landroid/graphics/Point;->x:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget v9, v13, Landroid/graphics/Point;->y:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 93
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 94
    .local v23, "visibleRect":Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v6}, Lcom/android/camera/ui/ZoomView;->access$400(Lcom/android/camera/ui/ZoomView;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v7}, Lcom/android/camera/ui/ZoomView;->access$500(Lcom/android/camera/ui/ZoomView;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 99
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    .line 100
    .local v17, "mapping":Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 101
    new-instance v21, Landroid/graphics/RectF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    .line 102
    .local v21, "visibleAfterRotation":Landroid/graphics/RectF;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 106
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    .line 107
    .local v22, "visibleInImage":Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    .local v14, "invertRotation":Landroid/graphics/Matrix;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 109
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 112
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .local v19, "region":Landroid/graphics/Rect;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 116
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v13, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v13, Landroid/graphics/Point;->y:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 118
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-nez v4, :cond_3

    .line 119
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/ZoomView;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size for partial region. Region: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 123
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 127
    :cond_4
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v4}, Lcom/android/camera/ui/ZoomView;->access$300(Lcom/android/camera/ui/ZoomView;)I

    move-result v4

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;II)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 138
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v4, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v4}, Lcom/android/camera/ui/ZoomView;->access$100(Lcom/android/camera/ui/ZoomView;)Ljava/io/InputStream;

    move-result-object v15

    .line 140
    .local v15, "is":Ljava/io/InputStream;
    if-nez v15, :cond_6

    .line 141
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 135
    .end local v15    # "is":Ljava/io/InputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/ui/ZoomView;->access$600(Lcom/android/camera/ui/ZoomView;II)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    .line 145
    .restart local v15    # "is":Ljava/io/InputStream;
    :cond_6
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v15, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 146
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .end local v15    # "is":Ljava/io/InputStream;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v4, :cond_8

    .line 152
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 147
    .restart local v15    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v10

    .line 148
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/ui/ZoomView;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Failed to instantiate region decoder"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3

    .line 154
    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "is":Ljava/io/InputStream;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 155
    .local v3, "b":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 156
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 158
    :cond_9
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    .local v8, "rotation":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v4}, Lcom/android/camera/ui/ZoomView;->access$300(Lcom/android/camera/ui/ZoomView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 160
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, [Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomView;->access$702(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomView;->access$800(Lcom/android/camera/ui/ZoomView;Z)V

    .line 174
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/android/camera/ui/ZoomView;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomView;->access$000(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 59
    return-void
.end method
