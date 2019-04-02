.class final Lcom/android/camera/PhotoModule$ShutterCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
.implements Lcom/android/camera/PhotoModule$SavePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# static fields
.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x2


# instance fields
.field private final mNeedFakeShutterSound:Z

.field private final mNeedsAnimation:Z

.field private final mUsePostProcess:Z

.field final memento:Lcom/android/camera/PhotoModule$Memento;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;ZZLcom/android/camera/PhotoModule$Memento;Z)V
    .locals 0
    .param p2, "needsAnimation"    # Z
    .param p3, "needFakeShutterSound"    # Z
    .param p4, "memento"    # Lcom/android/camera/PhotoModule$Memento;
    .param p5, "usePostProcess"    # Z

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput-boolean p2, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedsAnimation:Z

    .line 1124
    iput-boolean p3, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedFakeShutterSound:Z

    .line 1125
    iput-object p4, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    .line 1126
    iput-boolean p5, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mUsePostProcess:Z

    .line 1127
    return-void
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 1238
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1239
    .local v5, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1244
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1245
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 1245
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0
.end method

.method private rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 1230
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1231
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 1233
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p1, "memento"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1256
    invoke-static {p1}, Lcom/android/camera/PhotoModule$Memento;->access$4900(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateCapture()Z
    .locals 1

    .prologue
    .line 1261
    const/4 v0, 0x1

    return v0
.end method

.method public isFakeImage()Z
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x1

    return v0
.end method

.method public isHandleImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyRemoteShutterListner()Z
    .locals 1

    .prologue
    .line 1271
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x1

    return v0
.end method

.method public isUseWaterMark()Z
    .locals 2

    .prologue
    .line 1276
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PosRawPictureCallback isUseWaterMark = false"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1277
    const/4 v0, 0x0

    return v0
.end method

.method public onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 14
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1131
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/camera/PhotoModule;->access$3702(Lcom/android/camera/PhotoModule;J)J

    .line 1132
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v10, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v10}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v12, v12, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/camera/PhotoModule;->mShutterLag:J

    .line 1133
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mShutterLag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v12, v11, Lcom/android/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1135
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v9

    const-string v10, "PhotoModule--stopFlashAnimationAfterTakePicture"

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1136
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1137
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    const-string v10, "ShutterCallback"

    invoke-interface {v9, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1143
    :cond_0
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/android/camera/app/AppController;->stopFlashAnimationAfterTakePicture(Z)V

    .line 1144
    iget-boolean v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedsAnimation:Z

    if-eqz v9, :cond_1

    .line 1151
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;)V

    .line 1153
    :cond_1
    iget-boolean v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mNeedFakeShutterSound:Z

    if-eqz v9, :cond_4

    .line 1154
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v9

    if-nez v9, :cond_2

    .line 1155
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    new-instance v10, Landroid/media/MediaActionSound;

    invoke-direct {v10}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v9, v10}, Lcom/android/camera/PhotoModule;->access$4002(Lcom/android/camera/PhotoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 1157
    :cond_2
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1158
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$4100(Lcom/android/camera/PhotoModule;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1159
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/media/MediaActionSound;->load(I)V

    .line 1160
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/camera/PhotoModule;->access$4102(Lcom/android/camera/PhotoModule;Z)Z

    .line 1162
    :cond_3
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/media/MediaActionSound;->play(I)V

    .line 1166
    :cond_4
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/app/CameraAppUI;->setFakeShutterButtonEnabled()V

    .line 1167
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/app/CameraAppUI;->setFakeSwitchButtonEnabled()V

    .line 1169
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v9

    const-string v10, "FakeThumbnail"

    invoke-virtual {v9, v10}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 1170
    .local v2, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/camera/app/CameraAppUI;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1171
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v9, "getOriPreviewFrame"

    invoke-interface {v2, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1172
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v9}, Lcom/android/camera/PhotoModule$Memento;->access$4200(Lcom/android/camera/PhotoModule$Memento;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1173
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule$ShutterCallback;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1174
    .local v1, "flipBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1175
    move-object v0, v1

    .line 1179
    .end local v1    # "flipBmp":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v10}, Lcom/android/camera/PhotoModule$Memento;->access$4300(Lcom/android/camera/PhotoModule$Memento;)I

    move-result v10

    invoke-interface {v9, v10}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v4

    .line 1180
    .local v4, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    const-string v9, "getCharacteristics"

    invoke-interface {v2, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v7

    .line 1182
    .local v7, "sensorOrientation":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1185
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v9}, Lcom/android/camera/PhotoModule$Memento;->access$4400(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v9

    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v9, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v3

    .line 1186
    .local v3, "hw_rotate_support":Z
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v10, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v10}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/PhotoModule;->access$4600(Lcom/android/camera/PhotoModule;Lcom/android/ex/camera2/portability/CaptureIntent;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v9

    if-nez v9, :cond_b

    :cond_6
    if-nez v3, :cond_b

    .line 1187
    if-eqz v7, :cond_a

    .line 1188
    rsub-int v5, v7, 0x168

    .line 1189
    .local v5, "rotate":I
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v9}, Lcom/android/camera/PhotoModule$Memento;->access$4200(Lcom/android/camera/PhotoModule$Memento;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1190
    move v5, v7

    .line 1193
    :cond_7
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v9}, Lcom/android/camera/PhotoModule$Memento;->access$4800(Lcom/android/camera/PhotoModule$Memento;)I

    move-result v9

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_8

    .line 1194
    add-int/lit16 v5, v5, 0xb4

    .line 1197
    :cond_8
    int-to-float v9, v5

    invoke-direct {p0, v0, v9}, Lcom/android/camera/PhotoModule$ShutterCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1198
    .local v6, "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x50

    invoke-virtual {v6, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1199
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1216
    .end local v5    # "rotate":I
    .end local v6    # "rotatedBmp":Landroid/graphics/Bitmap;
    :goto_0
    const-string v9, "ByteArrayOutputStream OK"

    invoke-interface {v2, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1219
    const/4 v0, 0x0

    .line 1221
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/camera/PhotoModule$ShutterCallback;->savePreviewData([B)V

    .line 1222
    const-string v9, "savePreviewData done"

    invoke-interface {v2, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1223
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1224
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1225
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    const-string v10, "ShutterCallback done"

    invoke-interface {v9, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1227
    :cond_9
    return-void

    .line 1202
    :cond_a
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x50

    invoke-virtual {v0, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 1207
    :cond_b
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v9}, Lcom/android/camera/PhotoModule$Memento;->access$4800(Lcom/android/camera/PhotoModule$Memento;)I

    move-result v9

    add-int/lit8 v5, v9, -0x5a

    .line 1208
    .restart local v5    # "rotate":I
    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v9}, Lcom/android/camera/PhotoModule$Memento;->access$4800(Lcom/android/camera/PhotoModule$Memento;)I

    move-result v9

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_c

    .line 1209
    add-int/lit16 v5, v5, 0xb4

    .line 1211
    :cond_c
    int-to-float v9, v5

    invoke-direct {p0, v0, v9}, Lcom/android/camera/PhotoModule$ShutterCallback;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1212
    .restart local v6    # "rotatedBmp":Landroid/graphics/Bitmap;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x50

    invoke-virtual {v6, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1213
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected savePreviewData([B)V
    .locals 1
    .param p1, "previewData"    # [B

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->memento:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v0, p1, p0}, Lcom/android/camera/PhotoModule$Memento;->access$5000(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/PhotoModule$SavePictureCallback;)V

    .line 1287
    return-void
.end method
