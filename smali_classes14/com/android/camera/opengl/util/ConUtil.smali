.class public Lcom/android/camera/opengl/util/ConUtil;
.super Ljava/lang/Object;
.source "ConUtil.java"


# static fields
.field public static bitmap:Landroid/graphics/Bitmap;

.field private static toast:Landroid/widget/Toast;

.field public static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ints2Bytes([I)[B
    .locals 8
    .param p0, "s"    # [I

    .prologue
    .line 174
    const/4 v0, 0x4

    .line 175
    .local v0, "bLength":B
    array-length v5, p0

    mul-int/2addr v5, v0

    new-array v1, v5, [B

    .line 177
    .local v1, "buf":[B
    const/4 v2, 0x0

    .local v2, "iLoop":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 178
    aget v5, p0, v2

    invoke-static {v5}, Lcom/android/camera/opengl/util/ConUtil;->getBytes(I)[B

    move-result-object v4

    .line 180
    .local v4, "temp":[B
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1out->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    const/4 v3, 0x0

    .local v3, "jLoop":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 183
    mul-int v5, v2, v0

    add-int/2addr v5, v3

    aget-byte v6, v4, v3

    aput-byte v6, v1, v5

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "jLoop":I
    .end local v4    # "temp":[B
    :cond_1
    return-object v1
.end method

.method public static acquireWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 448
    sget-object v1, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 449
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    move-object v0, v1

    check-cast v0, Landroid/os/PowerManager;

    .line 450
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "My Tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 451
    sget-object v1, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 453
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public static convert(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "mIsFrontalCamera"    # Z

    .prologue
    const/4 v1, 0x0

    .line 713
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 714
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 715
    .local v4, "h":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 716
    .local v9, "newbBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 717
    .local v8, "cv":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 719
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p1, :cond_0

    .line 720
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 723
    :cond_0
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 724
    .local v7, "bitmap2":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v0, v1, v1, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v8, v7, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 726
    return-object v9
.end method

.method public static getBeautyLevel(I)[F
    .locals 4
    .param p0, "level"    # I

    .prologue
    .line 834
    const/4 v2, 0x0

    .line 835
    .local v2, "denoise":F
    const/4 v0, 0x0

    .line 836
    .local v0, "brightness":F
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 837
    .local v1, "data":[F
    packed-switch p0, :pswitch_data_0

    .line 857
    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    aput v2, v1, v3

    .line 858
    const/4 v3, 0x1

    aput v0, v1, v3

    .line 859
    return-object v1

    .line 841
    :pswitch_1
    mul-int/lit8 v3, p0, 0x2

    int-to-float v2, v3

    .line 842
    mul-int/lit8 v3, p0, 0x2

    int-to-float v0, v3

    .line 843
    goto :goto_0

    .line 845
    :pswitch_2
    add-int/lit8 v3, p0, 0x1

    int-to-float v2, v3

    .line 846
    add-int/lit8 v3, p0, 0x1

    int-to-float v0, v3

    .line 847
    goto :goto_0

    .line 849
    :pswitch_3
    add-int/lit8 v3, p0, 0x1

    int-to-float v2, v3

    .line 850
    add-int/lit8 v3, p0, 0x1

    int-to-float v0, v3

    .line 851
    goto :goto_0

    .line 853
    :pswitch_4
    add-int/lit8 v3, p0, 0x2

    int-to-float v2, v3

    .line 854
    add-int/lit8 v3, p0, 0x2

    int-to-float v0, v3

    goto :goto_0

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getBitMap([BLandroid/hardware/Camera;Z)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "data"    # [B
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "mIsFrontalCamera"    # Z

    .prologue
    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    .line 335
    .local v3, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    .line 336
    .local v4, "height":I
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 338
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 339
    .local v12, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 341
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 343
    .local v14, "jpegData":[B
    const/4 v1, 0x0

    array-length v2, v14

    invoke-static {v14, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 345
    .local v5, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 346
    .local v10, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 352
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 353
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 354
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    .line 353
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 355
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 357
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 358
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 360
    .local v13, "hight":I
    :goto_0
    int-to-float v1, v13

    const/high16 v2, 0x44480000    # 800.0f

    div-float v15, v1, v2

    .line 362
    .local v15, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v15, v1

    if-lez v1, :cond_0

    .line 364
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-int v1, v1

    .line 365
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    float-to-int v2, v2

    const/4 v6, 0x0

    .line 363
    invoke-static {v5, v1, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 367
    :cond_0
    return-object v5

    .line 358
    .end local v13    # "hight":I
    .end local v15    # "scale":F
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    goto :goto_0
.end method

.method public static getBytes(I)[B
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 210
    invoke-static {}, Lcom/android/camera/opengl/util/ConUtil;->testCPU()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/opengl/util/ConUtil;->getBytes(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(IZ)[B
    .locals 4
    .param p0, "s"    # I
    .param p1, "bBigEnding"    # Z

    .prologue
    .line 191
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 193
    .local v0, "buf":[B
    if-eqz p1, :cond_0

    .line 194
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 195
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 196
    shr-int/lit8 p0, p0, 0x8

    .line 194
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 201
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 202
    shr-int/lit8 p0, p0, 0x8

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    return-object v0
.end method

.method public static getEffectOrientation(II)I
    .locals 2
    .param p0, "screenAngle"    # I
    .param p1, "cameraAngle"    # I

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "result":I
    if-nez p0, :cond_1

    .line 823
    move v0, p1

    .line 830
    :cond_0
    :goto_0
    return v0

    .line 824
    :cond_1
    const/16 v1, 0x5a

    if-ne p0, v1, :cond_2

    .line 825
    const/16 v0, 0xb4

    goto :goto_0

    .line 826
    :cond_2
    const/16 v1, 0x10e

    if-ne p0, v1, :cond_3

    .line 827
    const/4 v0, 0x0

    goto :goto_0

    .line 828
    :cond_3
    const/16 v1, 0xb4

    if-ne p0, v1, :cond_0

    .line 829
    rsub-int v0, p1, 0x168

    goto :goto_0
.end method

.method public static getExifOrientation(IZ)I
    .locals 1
    .param p0, "angle"    # I
    .param p1, "flip"    # Z

    .prologue
    .line 808
    sparse-switch p0, :sswitch_data_0

    .line 816
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :goto_0
    return v0

    .line 810
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 812
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    .line 814
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 816
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 808
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getFileContent(Landroid/content/Context;I)[B
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 626
    const/4 v4, 0x0

    .line 627
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 628
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 629
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 631
    .local v2, "count":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 632
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 633
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 636
    :catch_0
    move-exception v3

    .line 637
    .local v3, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 640
    const/4 v4, 0x0

    .line 642
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 635
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    const/4 v4, 0x0

    .line 642
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_1

    .line 640
    :catchall_0
    move-exception v5

    const/4 v4, 0x0

    throw v5
.end method

.method public static getFileContent(Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 646
    const/4 v4, 0x0

    .line 647
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 648
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 649
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 651
    .local v2, "count":I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 653
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 656
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 657
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :goto_1
    const/4 v6, 0x0

    .line 660
    const/4 v4, 0x0

    .line 662
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return-object v6

    .line 655
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    const/4 v4, 0x0

    .line 662
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_2

    .line 660
    :catchall_0
    move-exception v6

    :goto_3
    const/4 v4, 0x0

    throw v6

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 656
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static getFormatterDate(J)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # J

    .prologue
    .line 374
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 375
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 376
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "data":Ljava/lang/String;
    return-object v1
.end method

.method public static getGrayscale(Landroid/graphics/Bitmap;)[B
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 610
    if-nez p0, :cond_1

    .line 611
    const/4 v6, 0x0

    .line 622
    :cond_0
    return-object v6

    .line 613
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    new-array v6, v7, [B

    .line 614
    .local v6, "ret":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 615
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 616
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 617
    .local v4, "pixel":I
    const/high16 v7, 0xff0000

    and-int/2addr v7, v4

    shr-int/lit8 v5, v7, 0x10

    .line 618
    .local v5, "red":I
    const v7, 0xff00

    and-int/2addr v7, v4

    shr-int/lit8 v1, v7, 0x8

    .line 619
    .local v1, "green":I
    and-int/lit16 v0, v4, 0xff

    .line 620
    .local v0, "blue":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v7, v2

    mul-int/lit16 v8, v5, 0x12b

    mul-int/lit16 v9, v1, 0x24b

    add-int/2addr v8, v9

    mul-int/lit8 v9, v0, 0x72

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0x3e8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 614
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v4    # "pixel":I
    .end local v5    # "red":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 486
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 488
    .local v0, "src":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/media/ExifInterface;

    invoke-direct {v9, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 489
    .local v9, "exif":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    .line 491
    .local v10, "rotation":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 493
    .local v5, "matrix":Landroid/graphics/Matrix;
    const-string v1, "GetImage Rotation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    packed-switch v10, :pswitch_data_0

    .line 530
    .end local v0    # "src":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .end local v10    # "rotation":I
    :goto_0
    :pswitch_0
    return-object v0

    .line 498
    .restart local v0    # "src":Landroid/graphics/Bitmap;
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    .restart local v10    # "rotation":I
    :pswitch_1
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 525
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 526
    .local v7, "dst":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v7

    .line 527
    goto :goto_0

    .line 501
    .end local v7    # "dst":Landroid/graphics/Bitmap;
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 528
    .end local v0    # "src":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .end local v10    # "rotation":I
    :catch_0
    move-exception v8

    .line 529
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "src":Landroid/graphics/Bitmap;
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    .restart local v10    # "rotation":I
    :pswitch_3
    const/high16 v1, 0x43340000    # 180.0f

    :try_start_1
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 505
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 508
    :pswitch_4
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 509
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 512
    :pswitch_5
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1

    .line 515
    :pswitch_6
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 516
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 519
    :pswitch_7
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getJsonString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "featureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 307
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 311
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getParserFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v5, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 227
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 229
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 230
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 231
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 234
    .local v3, "count":I
    :goto_0
    :try_start_1
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 235
    const/4 v12, 0x0

    invoke-virtual {v1, v2, v12, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 252
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    if-eqz v8, :cond_0

    .line 256
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 262
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 271
    :cond_1
    :goto_3
    return-object v5

    .line 238
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    :cond_2
    :try_start_5
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/String;-><init>([B)V

    .line 240
    .local v6, "filterStr":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 241
    .local v11, "rootJson":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v7, v12, :cond_3

    .line 242
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 244
    .local v9, "json":Lorg/json/JSONObject;
    const-string v12, "name"

    const-string v13, "title_chinese"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v12, "name_english"

    const-string v13, "title_english"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v12, "filter"

    const-string v13, "filter"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v12, "image"

    const-string v13, "sample"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 241
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 254
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v8, :cond_4

    .line 256
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 262
    :cond_4
    :goto_5
    if-eqz v1, :cond_7

    .line 264
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v1

    .line 267
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 257
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 265
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 266
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 267
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 257
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "filterStr":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "rootJson":Lorg/json/JSONArray;
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 265
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 266
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 254
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v8, :cond_5

    .line 256
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 262
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    .line 264
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 267
    :cond_6
    :goto_8
    throw v12

    .line 257
    :catch_5
    move-exception v4

    .line 258
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 265
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 266
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 254
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    :catchall_1
    move-exception v12

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 251
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    :catch_7
    move-exception v4

    goto/16 :goto_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "filterStr":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v11    # "rootJson":Lorg/json/JSONArray;
    :cond_7
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3
.end method

.method public static getPixelsBGR(Landroid/graphics/Bitmap;)[B
    .locals 11
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 559
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 561
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "tmp":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 562
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 563
    mul-int v0, v3, v7

    mul-int/lit8 v0, v0, 0x3

    new-array v10, v0, [B

    .line 565
    .local v10, "pixels":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    mul-int v0, v3, v7

    if-ge v9, v0, :cond_0

    .line 566
    aget v8, v1, v9

    .line 567
    .local v8, "argb":I
    mul-int/lit8 v0, v9, 0x3

    add-int/lit8 v0, v0, 0x0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    .line 568
    mul-int/lit8 v0, v9, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    .line 569
    mul-int/lit8 v0, v9, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    .line 565
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 572
    .end local v8    # "argb":I
    :cond_0
    return-object v10
.end method

.method public static getPixelsRGBA(Landroid/graphics/Bitmap;)[B
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 538
    .local v1, "bytes":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 539
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 541
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 543
    .local v4, "temp":[B
    array-length v5, v4

    new-array v3, v5, [B

    .line 546
    .local v3, "pixels":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    if-ge v2, v5, :cond_0

    .line 547
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x0

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x0

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 548
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 549
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 550
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 546
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    :cond_0
    return-object v3
.end method

.method public static getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentURI"    # Landroid/net/Uri;

    .prologue
    .line 463
    const/4 v8, 0x0

    .line 464
    .local v8, "result":Ljava/lang/String;
    const/4 v6, 0x0

    .line 466
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 469
    if-nez v6, :cond_1

    .line 470
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 477
    :goto_0
    if-eqz v6, :cond_0

    .line 478
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_0
    return-object v8

    .line 472
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 473
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 474
    .local v7, "index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 477
    .end local v7    # "index":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 478
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 700
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    return-object v1

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 705
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getYUVBitMap([BLandroid/hardware/Camera;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "Angle"    # I

    .prologue
    const/4 v9, 0x0

    .line 316
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    .line 317
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    .line 318
    .local v4, "height":I
    const/16 v1, 0x5a

    if-eq p2, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p2, v1, :cond_1

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    .line 320
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    .line 322
    :cond_1
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 324
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 325
    .local v6, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 326
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 328
    .local v7, "jpegData":[B
    array-length v1, v7

    invoke-static {v7, v9, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 329
    .local v8, "tmpBitmap":Landroid/graphics/Bitmap;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 330
    return-object v8
.end method

.method public static isGoneKeyBoard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 440
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 443
    :cond_0
    return-void
.end method

.method public static mergeBitmapWithLogo(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bmpLogo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 781
    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 783
    .local v6, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 786
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 787
    .local v7, "srcRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 788
    .local v2, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v7, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 791
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "srcRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 793
    .restart local v7    # "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 794
    .local v8, "width":I
    mul-int/lit8 v11, v8, 0x6

    div-int/lit8 v5, v11, 0x78

    .line 795
    .local v5, "margin":I
    mul-int/lit8 v11, v8, 0x24

    div-int/lit8 v4, v11, 0x78

    .line 796
    .local v4, "logoWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v11, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int v3, v11, v12

    .line 798
    .local v3, "logoHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v11, v4

    sub-int v9, v11, v5

    .line 799
    .local v9, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v3

    sub-int v10, v11, v5

    .line 800
    .local v10, "y":I
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "dstRect":Landroid/graphics/Rect;
    add-int v11, v9, v4

    add-int v12, v10, v3

    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 802
    .restart local v2    # "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v7, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 804
    return-object v6
.end method

.method public static releaseWakeLock()V
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 458
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/opengl/util/ConUtil;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 460
    :cond_0
    return-void
.end method

.method public static rotateFloat([FIIIZ)[F
    .locals 1
    .param p0, "data"    # [F
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "angle"    # I
    .param p4, "isMirror"    # Z

    .prologue
    .line 50
    const/16 v0, 0x5a

    if-ne p3, v0, :cond_1

    .line 51
    invoke-static {p0, p1, p2, p4}, Lcom/android/camera/opengl/util/ConUtil;->rotateFloat_90([FIIZ)[F

    move-result-object p0

    .line 57
    .end local p0    # "data":[F
    :cond_0
    :goto_0
    return-object p0

    .line 52
    .restart local p0    # "data":[F
    :cond_1
    const/16 v0, 0xb4

    if-ne p3, v0, :cond_2

    .line 53
    invoke-static {p0, p1, p2, p4}, Lcom/android/camera/opengl/util/ConUtil;->rotateFloat_180([FIIZ)[F

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_2
    const/16 v0, 0x10e

    if-ne p3, v0, :cond_0

    .line 55
    invoke-static {p0, p1, p2, p4}, Lcom/android/camera/opengl/util/ConUtil;->rotateFloat_270([FIIZ)[F

    move-result-object p0

    goto :goto_0
.end method

.method public static rotateFloat_180([FIIZ)[F
    .locals 3
    .param p0, "data"    # [F
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isMirror"    # Z

    .prologue
    .line 119
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 128
    :cond_1
    return-object v0

    .line 122
    :cond_2
    mul-int v2, p1, p2

    new-array v0, v2, [F

    .line 124
    .local v0, "data_1":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 125
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget v2, p0, v2

    aput v2, v0, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static rotateFloat_270([FIIZ)[F
    .locals 9
    .param p0, "data"    # [F
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isMirror"    # Z

    .prologue
    .line 90
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 91
    :cond_0
    const/4 v2, 0x0

    .line 115
    :cond_1
    return-object v2

    .line 93
    :cond_2
    filled-new-array {p2, p1}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 95
    .local v1, "data_1":[[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_4

    .line 96
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, p1, :cond_3

    .line 97
    mul-int v7, v3, p1

    add-int v4, v7, v5

    .line 98
    .local v4, "index":I
    aget v0, p0, v4

    .line 99
    .local v0, "d":F
    aget-object v7, v1, v3

    aput v0, v7, v5

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "d":F
    .end local v4    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v5    # "j":I
    :cond_4
    mul-int v7, p1, p2

    new-array v2, v7, [F

    .line 105
    .local v2, "data_2":[F
    const/4 v6, 0x0

    .line 106
    .local v6, "n":I
    add-int/lit8 v3, p1, -0x1

    :goto_2
    if-ltz v3, :cond_1

    .line 107
    add-int/lit8 v5, p2, -0x1

    .restart local v5    # "j":I
    :goto_3
    if-ltz v5, :cond_6

    .line 108
    if-eqz p3, :cond_5

    .line 109
    sub-int v7, p2, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v3

    aget v7, v7, v8

    aput v7, v2, v6

    .line 112
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 107
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 111
    :cond_5
    sub-int v7, p2, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    aget v7, v7, v3

    aput v7, v2, v6

    goto :goto_4

    .line 106
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method public static rotateFloat_90([FIIZ)[F
    .locals 9
    .param p0, "data"    # [F
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isMirror"    # Z

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 86
    :cond_1
    return-object v2

    .line 65
    :cond_2
    filled-new-array {p2, p1}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 67
    .local v1, "data_1":[[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_4

    .line 68
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, p1, :cond_3

    .line 69
    mul-int v7, v3, p1

    add-int v4, v7, v5

    .line 70
    .local v4, "index":I
    aget v0, p0, v4

    .line 71
    .local v0, "d":F
    aget-object v7, v1, v3

    aput v0, v7, v5

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "d":F
    .end local v4    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v5    # "j":I
    :cond_4
    mul-int v7, p1, p2

    new-array v2, v7, [F

    .line 76
    .local v2, "data_2":[F
    const/4 v6, 0x0

    .line 77
    .local v6, "n":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_1

    .line 78
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    if-ge v5, p2, :cond_6

    .line 79
    if-eqz p3, :cond_5

    .line 80
    sub-int v7, p2, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v3

    aget v7, v7, v8

    aput v7, v2, v6

    .line 83
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 82
    :cond_5
    sub-int v7, p2, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    aget v7, v7, v3

    aput v7, v2, v6

    goto :goto_4

    .line 77
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static saveAssestsData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 283
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v6, "stickerFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 286
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 301
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "stickerFile":Ljava/io/File;
    :goto_0
    return-object v5

    .line 288
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "stickerFile":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v7, 0x200

    new-array v0, v7, [B

    .line 290
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 291
    .local v1, "count":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    .line 292
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "stickerFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    const/4 v5, 0x0

    goto :goto_0

    .line 294
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "stickerFile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 295
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 296
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmaptosave"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 733
    if-nez p1, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-object v6

    .line 737
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 738
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/camera"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v4, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 740
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 744
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "bitmapFileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 748
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    .line 751
    .local v5, "successful":Z
    if-eqz v5, :cond_3

    .line 752
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/android/camera/opengl/util/ConUtil;->updateAlbum(Landroid/content/Context;Ljava/io/File;)V

    .line 753
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 761
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 761
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 762
    :catch_1
    move-exception v1

    .line 763
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 756
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "successful":Z
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 757
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 761
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 762
    :catch_3
    move-exception v1

    .line 763
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 760
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 761
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 764
    :goto_3
    throw v6

    .line 762
    :catch_4
    move-exception v1

    .line 763
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 760
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 756
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static setBitmapAlpha(Landroid/graphics/Bitmap;[F)[B
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "alphas"    # [F

    .prologue
    .line 578
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 581
    .local v1, "bytes":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 582
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 584
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 586
    .local v4, "temp":[B
    array-length v5, v4

    new-array v3, v5, [B

    .line 590
    .local v3, "pixels":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    if-ge v2, v5, :cond_2

    .line 591
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x0

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x0

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 592
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 593
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 595
    aget v5, p1, v2

    const v6, 0x3e19999a    # 0.15f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 596
    const/4 v5, 0x0

    aput v5, p1, v2

    .line 600
    :cond_0
    :goto_1
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    const/high16 v6, 0x437f0000    # 255.0f

    aget v7, p1, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    :cond_1
    aget v5, p1, v2

    const v6, 0x3f0ccccd    # 0.55f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 598
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, p1, v2

    goto :goto_1

    .line 603
    :cond_2
    return-object v3
.end method

.method public static setBitmapPixel(Landroid/content/Context;II[B)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    .line 132
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 134
    .local v6, "mBitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 136
    .local v5, "mBitmapHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 137
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 138
    mul-int v7, v2, v6

    add-int/2addr v7, v4

    mul-int/lit8 v3, v7, 0x4

    .line 139
    .local v3, "index":I
    aget-byte v1, p3, v3

    .line 140
    .local v1, "d":B
    aget-byte v7, p3, v3

    add-int/lit8 v7, v7, 0x0

    aget-byte v8, p3, v3

    add-int/lit8 v8, v8, 0x1

    aget-byte v9, p3, v3

    add-int/lit8 v9, v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v0, v4, v2, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "d":B
    .end local v3    # "index":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "j":I
    :cond_1
    return-object v0
.end method

.method public static setBitmapPixel(Landroid/content/Context;II[F)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [F

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    .line 149
    sget-object v6, Lcom/android/camera/opengl/util/ConUtil;->bitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    .line 150
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/android/camera/opengl/util/ConUtil;->bitmap:Landroid/graphics/Bitmap;

    .line 153
    :cond_0
    sget-object v6, Lcom/android/camera/opengl/util/ConUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 154
    .local v5, "mBitmapWidth":I
    sget-object v6, Lcom/android/camera/opengl/util/ConUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 156
    .local v4, "mBitmapHeight":I
    const-string v6, "ceshi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPixel: data.length == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v6, "ceshi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPixel: mBitmapWidth == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int v8, v5, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 161
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 162
    mul-int v6, v1, v5

    add-int v2, v6, v3

    .line 163
    .local v2, "index":I
    aget v0, p3, v2

    .line 166
    .local v0, "d":F
    sget-object v6, Lcom/android/camera/opengl/util/ConUtil;->bitmap:Landroid/graphics/Bitmap;

    mul-float v7, v0, v10

    float-to-int v7, v7

    mul-float v8, v0, v10

    float-to-int v8, v8

    mul-float v9, v0, v10

    float-to-int v9, v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v3, v1, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "d":F
    .end local v2    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "j":I
    :cond_2
    sget-object v6, Lcom/android/camera/opengl/util/ConUtil;->bitmap:Landroid/graphics/Bitmap;

    return-object v6
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 685
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 686
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 687
    :cond_0
    if-eqz p0, :cond_1

    .line 688
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    .line 690
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 691
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 693
    :cond_1
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 671
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 672
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 673
    :cond_0
    if-eqz p0, :cond_1

    .line 674
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    .line 676
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    const/16 v1, 0x30

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 677
    sget-object v0, Lcom/android/camera/opengl/util/ConUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 679
    :cond_1
    return-void
.end method

.method public static testCPU()Z
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toggleHideyBar(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 404
    .local v1, "uiOptions":I
    move v0, v1

    .line 407
    .local v0, "newUiOptions":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 408
    xor-int/lit8 v0, v0, 0x2

    .line 415
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 416
    xor-int/lit16 v0, v0, 0x1000

    .line 419
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 420
    return-void
.end method

.method public static updateAlbum(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 772
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 773
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    return-void
.end method
