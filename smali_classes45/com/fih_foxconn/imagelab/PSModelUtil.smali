.class public Lcom/fih_foxconn/imagelab/PSModelUtil;
.super Ljava/lang/Object;
.source "PSModelUtil.java"


# static fields
.field public static LOGGER:Lcom/fih_foxconn/imagelab/env/Logger; = null

.field public static final MODE_BLEND:I = 0x1

.field public static final MODE_MASK_ONLY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelUtil;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInputBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1}, Lcom/fih_foxconn/imagelab/PSModelUtil;->createInputBitmap(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createInputBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "jpegRotation"    # I
    .param p2, "isHwRotate"    # Z

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fih_foxconn/imagelab/PSModelUtil;->createInputBitmap(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createInputBitmap(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "jpegRotation"    # I
    .param p2, "isHwRotate"    # Z
    .param p3, "useFastInference"    # Z

    .prologue
    .line 209
    const/16 v1, 0x12c

    .line 210
    .local v1, "output_w":I
    const/16 v0, 0x190

    .line 212
    .local v0, "output_h":I
    invoke-static {p0, p1, p2}, Lcom/fih_foxconn/imagelab/PSModelUtil;->isPortraitBuffer(Landroid/graphics/Bitmap;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    const/16 v1, 0x190

    .line 215
    const/16 v0, 0x12c

    .line 218
    :cond_0
    if-eqz p3, :cond_1

    .line 219
    div-int/lit8 v0, v0, 0x2

    .line 220
    div-int/lit8 v1, v1, 0x2

    .line 223
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static face2Segment(Landroid/graphics/Bitmap;)I
    .locals 22
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    if-nez p0, :cond_0

    const/16 v19, -0x1

    .line 339
    :goto_0
    return v19

    .line 291
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x320

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v15, v0

    .line 292
    .local v15, "ratioX":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x320

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 295
    .local v16, "ratioY":F
    cmpl-float v19, v15, v16

    if-lez v19, :cond_2

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v20

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 297
    .local v12, "newX":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v20

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v13, v0

    .line 303
    .local v13, "newY":I
    :goto_1
    and-int/lit8 v19, v12, -0x2

    and-int/lit8 v20, v13, -0x2

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 304
    .local v17, "scaledBitmap":Landroid/graphics/Bitmap;
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 307
    .local v4, "convertedBitmap":Landroid/graphics/Bitmap;
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v8, v0, [Landroid/media/FaceDetector$Face;

    .line 308
    .local v8, "faces":[Landroid/media/FaceDetector$Face;
    new-instance v5, Landroid/media/FaceDetector;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Landroid/media/FaceDetector;-><init>(III)V

    .line 309
    .local v5, "detector":Landroid/media/FaceDetector;
    invoke-virtual {v5, v4, v8}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v7

    .line 310
    .local v7, "face":I
    const-string v19, "PSModelUtil"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FaceDetector: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v9, "faces_filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/FaceDetector$Face;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v7, :cond_3

    .line 315
    aget-object v19, v8, v10

    invoke-virtual/range {v19 .. v19}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v19

    const/high16 v20, 0x42480000    # 50.0f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_1

    .line 316
    aget-object v19, v8, v10

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 299
    .end local v4    # "convertedBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "detector":Landroid/media/FaceDetector;
    .end local v7    # "face":I
    .end local v8    # "faces":[Landroid/media/FaceDetector$Face;
    .end local v9    # "faces_filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/FaceDetector$Face;>;"
    .end local v10    # "i":I
    .end local v12    # "newX":I
    .end local v13    # "newY":I
    .end local v17    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 300
    .restart local v12    # "newX":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v13, v0

    .restart local v13    # "newY":I
    goto/16 :goto_1

    .line 319
    .restart local v4    # "convertedBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "detector":Landroid/media/FaceDetector;
    .restart local v7    # "face":I
    .restart local v8    # "faces":[Landroid/media/FaceDetector$Face;
    .restart local v9    # "faces_filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/FaceDetector$Face;>;"
    .restart local v10    # "i":I
    .restart local v17    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const-string v19, "PSModelUtil"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FaceDetector after filter: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v14, 0x0

    .line 321
    .local v14, "oneFaceDominate":Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 323
    const/4 v11, 0x0

    .line 324
    .local v11, "maxRect":F
    const/16 v18, 0x0

    .line 325
    .local v18, "secondRect":F
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/FaceDetector$Face;

    .line 326
    .local v6, "f":Landroid/media/FaceDetector$Face;
    invoke-virtual {v6}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v20

    cmpg-float v20, v11, v20

    if-gez v20, :cond_5

    .line 327
    move/from16 v18, v11

    .line 328
    invoke-virtual {v6}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v11

    goto :goto_3

    .line 329
    :cond_5
    invoke-virtual {v6}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v20

    cmpg-float v20, v18, v20

    if-gez v20, :cond_4

    .line 330
    invoke-virtual {v6}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v18

    goto :goto_3

    .line 333
    .end local v6    # "f":Landroid/media/FaceDetector$Face;
    :cond_6
    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v18

    cmpl-float v19, v11, v19

    if-lez v19, :cond_7

    .line 334
    const/4 v14, 0x1

    .line 337
    .end local v11    # "maxRect":F
    .end local v18    # "secondRect":F
    :cond_7
    const-string v20, "PSModelUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FaceDetector after checking dominate face: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v14, :cond_8

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    if-eqz v14, :cond_9

    const/16 v19, 0x1

    goto/16 :goto_0

    .line 337
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    goto :goto_4

    .line 339
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    goto/16 :goto_0
.end method

.method public static getMask(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isSuitable"    # Z

    .prologue
    .line 247
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelMobile;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/PSModelMobile;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/fih_foxconn/imagelab/PSModelUtil;->getMask(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/fih_foxconn/imagelab/AbstractPSModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getMask(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/fih_foxconn/imagelab/AbstractPSModel;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isSuitable"    # Z
    .param p3, "model"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .prologue
    .line 260
    if-eqz p2, :cond_0

    .line 262
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/fih_foxconn/imagelab/PSModelUtil;->createInputBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 263
    .local v9, "bitmap_image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 264
    .local v8, "bitmap_binary":Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/fih_foxconn/imagelab/PSProc;->refineBinaryMaskUsingGC(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 265
    .local v10, "bitmap_mask":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v10, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 266
    .local v12, "bitmap_mask_ori_size":Landroid/graphics/Bitmap;
    const/16 v2, 0xa

    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-static {v12, v0, v2, v3}, Lcom/fih_foxconn/imagelab/PSProc;->mattingWithBinaryMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 283
    .end local v8    # "bitmap_binary":Landroid/graphics/Bitmap;
    .end local v9    # "bitmap_image":Landroid/graphics/Bitmap;
    .end local v10    # "bitmap_mask":Landroid/graphics/Bitmap;
    .end local v12    # "bitmap_mask_ori_size":Landroid/graphics/Bitmap;
    :goto_0
    return-object v11

    .line 271
    :cond_0
    const/4 v2, 0x2

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 272
    .local v5, "colors":[I
    const/4 v2, 0x2

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    .line 273
    .local v6, "positions":[F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 274
    .local v16, "radius":I
    :goto_1
    new-instance v1, Landroid/graphics/RadialGradient;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 275
    .local v1, "gradient":Landroid/graphics/RadialGradient;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 276
    .local v15, "p":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 277
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 280
    .local v14, "mask":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    .local v13, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v13, v2, v3, v4, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object v11, v14

    .line 283
    goto :goto_0

    .line 273
    .end local v1    # "gradient":Landroid/graphics/RadialGradient;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "mask":Landroid/graphics/Bitmap;
    .end local v15    # "p":Landroid/graphics/Paint;
    .end local v16    # "radius":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    goto :goto_1

    .line 271
    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    .line 272
    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getPSRgbImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fih_foxconn/imagelab/PSModelUtil;->getPSRgbImg(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getPSRgbImg(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageMobile;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZ)V

    .line 143
    .local v0, "psImageMobile":Lcom/fih_foxconn/imagelab/PSImageMobile;
    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getRgbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static inference(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "mode"    # I
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;
    .param p2, "mode"    # I
    .param p3, "jpegRotation"    # I
    .param p4, "isHwRotate"    # Z

    .prologue
    .line 120
    new-instance v3, Lcom/fih_foxconn/imagelab/PSModelMobile;

    invoke-direct {v3}, Lcom/fih_foxconn/imagelab/PSModelMobile;-><init>()V

    .line 121
    .local v3, "psModelMobile":Lcom/fih_foxconn/imagelab/PSModelMobile;
    new-instance v2, Lcom/fih_foxconn/imagelab/PSImageMobile;

    invoke-virtual {v3}, Lcom/fih_foxconn/imagelab/PSModelMobile;->getNumOfInputChannels()I

    move-result v7

    invoke-direct {v2, p0, p3, p4, v7}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 122
    .local v2, "psImageMobile":Lcom/fih_foxconn/imagelab/PSImageMobile;
    new-instance v1, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;

    invoke-direct {v1}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;-><init>()V

    .line 123
    .local v1, "preProcessor":Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;
    if-eqz p1, :cond_0

    .line 124
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 125
    .local v5, "x":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 126
    .local v6, "y":I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v8

    .line 127
    .local v4, "w":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v7, v8

    .line 128
    .local v0, "h":I
    invoke-virtual {v1, v5, v6, v4, v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->setFace(IIII)V

    .line 130
    .end local v0    # "h":I
    .end local v4    # "w":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_0
    invoke-virtual {v1, v2}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->doPSImagePreprocess(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V

    .line 132
    invoke-virtual {v3, v2}, Lcom/fih_foxconn/imagelab/PSModelMobile;->inference(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V

    .line 134
    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getRstBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {v2}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getBlendBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public static inference(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "faceRect"    # Landroid/graphics/Rect;
    .param p3, "mode"    # I
    .param p4, "jpegRotation"    # I
    .param p5, "isHwRotate"    # Z

    .prologue
    .line 181
    new-instance v6, Lcom/fih_foxconn/imagelab/PSImageBuilder;

    invoke-direct {v6, p0, p1}, Lcom/fih_foxconn/imagelab/PSImageBuilder;-><init>(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;)V

    .line 182
    invoke-virtual {v6, p4}, Lcom/fih_foxconn/imagelab/PSImageBuilder;->setJpegRotation(I)Lcom/fih_foxconn/imagelab/PSImageBuilder;

    move-result-object v6

    .line 183
    invoke-virtual {v6, p5}, Lcom/fih_foxconn/imagelab/PSImageBuilder;->setHwRotate(Z)Lcom/fih_foxconn/imagelab/PSImageBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageBuilder;->build()Lcom/fih_foxconn/imagelab/AbstractPSImage;

    move-result-object v2

    .line 184
    .local v2, "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    invoke-static {p0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessFactory;->create(Lcom/fih_foxconn/imagelab/AbstractPSModel;)Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;

    move-result-object v1

    .line 186
    .local v1, "preProcessor":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    if-eqz p2, :cond_0

    .line 187
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 188
    .local v4, "x":I
    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 189
    .local v5, "y":I
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v6, v7

    .line 190
    .local v3, "w":I
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    .line 191
    .local v0, "h":I
    invoke-virtual {v1, v4, v5, v3, v0}, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;->setFace(IIII)V

    .line 193
    .end local v0    # "h":I
    .end local v3    # "w":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    invoke-virtual {v1, v2}, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;->doPSImagePreprocess(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/fih_foxconn/imagelab/AbstractPSModel;->inference(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V

    .line 197
    if-nez p3, :cond_1

    invoke-virtual {v2}, Lcom/fih_foxconn/imagelab/AbstractPSImage;->getRstBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v2}, Lcom/fih_foxconn/imagelab/AbstractPSImage;->getBlendBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public static inferenceAndGetBlendImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetBlendImg(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "jpegRotation"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetBlendImg(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v1, v1}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetBlendImg(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;
    .param p2, "jpegRotation"    # I

    .prologue
    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetBlendImg(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "jpegRotation"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "jpegRotation"    # I
    .param p2, "isHwRotate"    # Z

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;
    .param p2, "jpegRotation"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "faceRect"    # Landroid/graphics/Rect;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 151
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I

    .prologue
    .line 155
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 159
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "faceRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 163
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "faceRect"    # Landroid/graphics/Rect;
    .param p3, "jpegRotation"    # I

    .prologue
    .line 167
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static inferenceAndGetMask(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "faceRect"    # Landroid/graphics/Rect;
    .param p3, "jpegRotation"    # I
    .param p4, "isHwRotate"    # Z

    .prologue
    .line 171
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelUtil;->inference(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isPortraitBuffer(Landroid/graphics/Bitmap;IZ)Z
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "jpegRotation"    # I
    .param p2, "isHwRotate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "isPortrait":Z
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    move v0, v2

    .line 229
    .local v0, "isLandscapeSize":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 230
    if-nez v0, :cond_2

    move v1, v2

    .line 232
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isLandscapeSize":Z
    :cond_1
    move v0, v3

    .line 228
    goto :goto_0

    .restart local v0    # "isLandscapeSize":Z
    :cond_2
    move v1, v3

    .line 230
    goto :goto_1
.end method

.method private static isSizeSupportFace2Segment(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 344
    if-nez p0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v3

    .line 346
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 347
    .local v2, "width":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 348
    .local v0, "height":F
    cmpl-float v4, v2, v0

    if-lez v4, :cond_2

    div-float v1, v2, v0

    .line 350
    .local v1, "result":F
    :goto_1
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "result":F
    :cond_2
    div-float v1, v0, v2

    goto :goto_1
.end method

.method public static isSuitableForPS(Landroid/graphics/Bitmap;Z)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "isDualSight"    # Z

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-static {p0}, Lcom/fih_foxconn/imagelab/PSModelUtil;->face2Segment(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 237
    .local v0, "faces":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/fih_foxconn/imagelab/PSModelUtil;->isSizeSupportFace2Segment(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 240
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
