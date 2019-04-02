.class public Lcom/thirdparty/megvii/engine/MegviiImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "MegviiImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mBeautyLevel:I

.field private final mBeautySetting:Z

.field private final mEffectMode:I

.field private final mEffectSetting:Ljava/lang/String;

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

.field private final mScreenOrientation:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MegviiImgEng"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIIILjava/lang/String;ZI)V
    .locals 2
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "imgWidth"    # I
    .param p5, "imgHeight"    # I
    .param p6, "screenOrientation"    # I
    .param p7, "imgFormat"    # I
    .param p8, "effectMode"    # I
    .param p9, "effectSetting"    # Ljava/lang/String;
    .param p10, "beautySetting"    # Z
    .param p11, "beautyLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 20
    iput-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    .line 32
    iput-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgData:[B

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput p4, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgWidth:I

    .line 40
    iput p5, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgHeight:I

    .line 41
    iput p6, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mScreenOrientation:I

    .line 42
    iput p7, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgFormat:I

    .line 43
    iput p8, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mEffectMode:I

    .line 44
    iput-object p9, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mEffectSetting:Ljava/lang/String;

    .line 45
    iput-boolean p10, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mBeautySetting:Z

    .line 46
    iput p11, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mBeautyLevel:I

    .line 47
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 80
    :cond_0
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 51
    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 71
    :goto_0
    return v8

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mEffectMode:I

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v7

    .line 56
    .local v7, "state":Lcom/android/camera/effect/EffectChooseState;
    iget-boolean v5, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mBeautySetting:Z

    .line 57
    .local v5, "isBeautyOn":Z
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v7, v0, :cond_2

    .line 58
    sget-object v0, Lcom/thirdparty/megvii/engine/MegviiImageEngine$1;->$SwitchMap$com$android$camera$effect$EffectChooseState:[I

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectChooseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_1
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMegviiImage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEffectMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mEffectMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    move v8, v0

    goto :goto_0

    .line 53
    .end local v5    # "isBeautyOn":Z
    .end local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 64
    .restart local v5    # "isBeautyOn":Z
    .restart local v7    # "state":Lcom/android/camera/effect/EffectChooseState;
    :pswitch_1
    new-instance v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;

    iget v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgHeight:I

    iget v3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mScreenOrientation:I

    iget-object v4, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mEffectSetting:Ljava/lang/String;

    iget v6, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mBeautyLevel:I

    invoke-direct/range {v0 .. v6}, Lcom/thirdparty/megvii/engine/PortraitLightenImage;-><init>(IIILjava/lang/String;ZI)V

    iput-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    goto :goto_1

    .line 68
    :cond_2
    if-eqz v5, :cond_1

    new-instance v0, Lcom/thirdparty/megvii/engine/BeautyImage;

    iget v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgHeight:I

    iget v3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mScreenOrientation:I

    iget v4, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mBeautyLevel:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/thirdparty/megvii/engine/BeautyImage;-><init>(IIII)V

    iput-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    goto :goto_1

    :cond_3
    move v0, v8

    .line 71
    goto :goto_2

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 3
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz p3, :cond_0

    .line 104
    iput-object p3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgData:[B

    .line 105
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processReultImageInternal()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgData:[B

    if-eqz v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    iget-object v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgData:[B

    invoke-interface {v1, v2}, Lcom/thirdparty/megvii/engine/MegviiImage;->processImage([B)[B

    move-result-object v0

    .line 117
    .local v0, "result":[B
    :goto_1
    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    instance-of v1, v1, Lcom/thirdparty/megvii/engine/BeautyImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    instance-of v1, v1, Lcom/thirdparty/megvii/engine/PortraitLightenImage;

    if-eqz v1, :cond_4

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgHeight:I

    const/16 v4, 0x11

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 122
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 116
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 120
    .restart local v0    # "result":[B
    :cond_4
    invoke-virtual {p0}, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgHeight:I

    const/16 v4, 0x100

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    goto :goto_2
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v1, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    invoke-interface {v0}, Lcom/thirdparty/megvii/engine/MegviiImage;->release()V

    .line 91
    iput-object v3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mMegviiImage:Lcom/thirdparty/megvii/engine/MegviiImage;

    .line 94
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;->mImgData:[B

    .line 95
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
