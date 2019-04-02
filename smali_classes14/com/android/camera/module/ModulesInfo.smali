.class public Lcom/android/camera/module/ModulesInfo;
.super Ljava/lang/Object;
.source "ModulesInfo.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ModulesInfo"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/module/ModulesInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/camera/module/ModulesInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method public static buildModeList(Landroid/content/Context;Ljava/util/List;ZZZZLcom/android/camera/one/config/OneCameraFeatureConfig;Lcom/android/camera/app/AppController;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isImageCaptureIntent"    # Z
    .param p4, "isVideoCaptureIntent"    # Z
    .param p5, "isBackCamera"    # Z
    .param p6, "config"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p7, "appController"    # Lcom/android/camera/app/AppController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZZZ",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig;",
            "Lcom/android/camera/app/AppController;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "allModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v9

    const-string v10, "buildModeList"

    invoke-virtual {v9, v10}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v6

    .line 218
    .local v6, "profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 219
    .local v7, "res":Landroid/content/res/Resources;
    const v9, 0x7f0b000c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 220
    .local v1, "liveBokehMode":I
    const v9, 0x7f0b0014

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 221
    .local v8, "slowMotionMode":I
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 222
    .local v3, "modeIsSupported":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 223
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    .local v2, "mode":I
    if-eqz p5, :cond_1

    if-ne v2, v1, :cond_1

    .line 225
    if-eqz p5, :cond_0

    sget-object v9, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    :goto_1
    invoke-static {v9}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v9

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 222
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    sget-object v9, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_1

    .line 226
    :cond_1
    if-ne v2, v8, :cond_3

    .line 227
    if-eqz p5, :cond_2

    sget-object v9, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    :goto_3
    invoke-static {v9}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v9

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_2
    sget-object v9, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_3

    .line 229
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 232
    .end local v2    # "mode":I
    :cond_4
    const-string v9, "modeIsSupported created"

    invoke-interface {v6, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v4, "modeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p4, :cond_6

    .line 236
    const v9, 0x7f0b0018

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 237
    .restart local v2    # "mode":I
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v9, "camera_mode_video_capture_intent add"

    invoke-interface {v6, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 261
    .end local v2    # "mode":I
    :cond_5
    :goto_4
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 262
    return-object v4

    .line 241
    :cond_6
    if-eqz p3, :cond_7

    .line 242
    const v9, 0x7f0b000a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 243
    .restart local v2    # "mode":I
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v9, "camera_mode_capture_intent add"

    invoke-interface {v6, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_4

    .line 248
    .end local v2    # "mode":I
    :cond_7
    const v9, 0x7f0d00df

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 249
    .local v5, "modeSequence":[I
    const-string v9, "getIntArray supported_mode_list"

    invoke-interface {v6, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    :goto_5
    array-length v9, v5

    if-ge v0, v9, :cond_5

    .line 252
    aget v2, v5, v0

    .line 253
    .restart local v2    # "mode":I
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 254
    invoke-static {v2, p0}, Lcom/android/camera/util/CameraUtil;->isCaptureIntentModule(ILandroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 251
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 255
    :cond_9
    invoke-static {v2, p0}, Lcom/android/camera/util/CameraUtil;->isOnlySupportBackCamera(ILandroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz p5, :cond_8

    .line 256
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static registerBeautyModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 555
    new-instance v0, Lcom/android/camera/module/ModulesInfo$10;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$10;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 581
    return-void
.end method

.method private static registerBokehModeModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 676
    new-instance v0, Lcom/android/camera/module/ModulesInfo$14;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$14;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 702
    return-void
.end method

.method private static registerCaptureIntentModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 483
    new-instance v0, Lcom/android/camera/module/ModulesInfo$8;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$8;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 515
    return-void
.end method

.method private static registerGcamModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "hdrPlusSupportLevel"    # Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    .prologue
    .line 453
    new-instance v0, Lcom/android/camera/module/ModulesInfo$7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/module/ModulesInfo$7;-><init>(ILjava/lang/String;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 479
    return-void
.end method

.method private static registerManualModeModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 585
    new-instance v0, Lcom/android/camera/module/ModulesInfo$11;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$11;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 611
    return-void
.end method

.method private static registerPIPPhotoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 615
    new-instance v0, Lcom/android/camera/module/ModulesInfo$12;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$12;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 641
    return-void
.end method

.method private static registerPIPVideoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 645
    new-instance v0, Lcom/android/camera/module/ModulesInfo$13;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$13;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 672
    return-void
.end method

.method private static registerPanoramaModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 333
    new-instance v0, Lcom/android/camera/module/ModulesInfo$3;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$3;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 359
    return-void
.end method

.method private static registerPhotoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 267
    new-instance v0, Lcom/android/camera/module/ModulesInfo$1;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$1;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 299
    return-void
.end method

.method private static registerPhotoSphereModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v0, Lcom/android/camera/module/ModulesInfo$5;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/module/ModulesInfo$5;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 419
    return-void
.end method

.method private static registerRefocusModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 423
    new-instance v0, Lcom/android/camera/module/ModulesInfo$6;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/module/ModulesInfo$6;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 449
    return-void
.end method

.method private static registerSlowmotionModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 736
    new-instance v0, Lcom/android/camera/module/ModulesInfo$16;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$16;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 761
    return-void
.end method

.method private static registerSquareModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 765
    new-instance v0, Lcom/android/camera/module/ModulesInfo$17;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$17;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 791
    return-void
.end method

.method private static registerTimelapsedModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 706
    new-instance v0, Lcom/android/camera/module/ModulesInfo$15;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$15;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 732
    return-void
.end method

.method private static registerVideoCaptureIntentModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 519
    new-instance v0, Lcom/android/camera/module/ModulesInfo$9;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$9;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 551
    return-void
.end method

.method private static registerVideoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "enableCaptureModule"    # Z

    .prologue
    .line 303
    new-instance v0, Lcom/android/camera/module/ModulesInfo$2;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/camera/module/ModulesInfo$2;-><init>(IZLjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 329
    return-void
.end method

.method private static registerWideAngleModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;)V
    .locals 1
    .param p0, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p1, "moduleId"    # I
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Lcom/android/camera/module/ModulesInfo$4;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/module/ModulesInfo$4;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/camera/app/ModuleManager;->registerModule(Lcom/android/camera/app/ModuleManager$ModuleAgent;)V

    .line 389
    return-void
.end method

.method public static setupMajorModules(Landroid/content/Context;Lcom/android/camera/app/ModuleManager;Lcom/android/camera/one/config/OneCameraFeatureConfig;Lcom/android/camera/app/AppController;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p2, "config"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v5

    const-string v6, "setupMajorModules"

    invoke-virtual {v5, v6}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 80
    .local v2, "profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 81
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 82
    .local v1, "photoModuleId":I
    const-string v5, "PhotoModule"

    .line 83
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v6

    .line 82
    invoke-static {p1, v1, v5, v6}, Lcom/android/camera/module/ModulesInfo;->registerPhotoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 84
    const-string v5, "PHOTO registed"

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 85
    invoke-interface {p1, v1}, Lcom/android/camera/app/ModuleManager;->setDefaultModuleIndex(I)Z

    .line 86
    const v5, 0x7f0b0017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-string v6, "VideoModule"

    .line 88
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v7

    .line 86
    invoke-static {p1, v5, v6, v7}, Lcom/android/camera/module/ModulesInfo;->registerVideoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 89
    const-string v5, "VIDEO registed"

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 90
    const v5, 0x7f0b000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 91
    .local v0, "imageCaptureIntentModuleId":I
    const-string v5, "PhotoModule"

    .line 92
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v6

    .line 91
    invoke-static {p1, v0, v5, v6}, Lcom/android/camera/module/ModulesInfo;->registerCaptureIntentModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 93
    const-string v5, "PHOTO CAPTURE registed"

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 94
    const v5, 0x7f0b0018

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 95
    .local v4, "videoCaptureIntentModuleId":I
    const-string v5, "VideoModule"

    .line 96
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v6

    .line 95
    invoke-static {p1, v4, v5, v6}, Lcom/android/camera/module/ModulesInfo;->registerVideoCaptureIntentModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 97
    const-string v5, "VIDEO CAPTURE registed"

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqPIP()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const v5, 0x7f0b0011

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-string v6, "PhotoModule"

    .line 102
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v7

    .line 100
    invoke-static {p1, v5, v6, v7}, Lcom/android/camera/module/ModulesInfo;->registerPIPPhotoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 103
    const-string v5, "PIP PHOTO registed"

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 104
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-string v6, "VideoModule"

    .line 106
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v7

    .line 104
    invoke-static {p1, v5, v6, v7}, Lcom/android/camera/module/ModulesInfo;->registerPIPVideoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 107
    const-string v5, "PIP VIDEO registed"

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqManualMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    const v5, 0x7f0b000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-string v6, "PhotoModule"

    .line 112
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v7

    .line 110
    invoke-static {p1, v5, v6, v7}, Lcom/android/camera/module/ModulesInfo;->registerManualModeModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 113
    const-string v5, "MANUAL registed"

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 116
    :cond_1
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 117
    return-void
.end method

.method public static setupMinorModules(Landroid/content/Context;Lcom/android/camera/app/ModuleManager;Lcom/android/camera/one/config/OneCameraFeatureConfig;Lcom/android/camera/app/AppController;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleManager"    # Lcom/android/camera/app/ModuleManager;
    .param p2, "config"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p3, "appController"    # Lcom/android/camera/app/AppController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v2

    const-string v3, "setupMinorModules"

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 123
    .local v0, "profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "PanoramaModule"

    .line 128
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v4

    .line 126
    invoke-static {p1, v2, v3, v4}, Lcom/android/camera/module/ModulesInfo;->registerPanoramaModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 129
    const-string v2, "PANORAMA registed"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 132
    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "PhotoModule"

    .line 134
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v4

    .line 132
    invoke-static {p1, v2, v3, v4}, Lcom/android/camera/module/ModulesInfo;->registerBeautyModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 135
    const-string v2, "BEAUTY registed"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "PhotoModule"

    .line 165
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v4

    .line 163
    invoke-static {p1, v2, v3, v4}, Lcom/android/camera/module/ModulesInfo;->registerBokehModeModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 166
    const-string v2, "BOKEH registed"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 170
    :cond_1
    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "VideoModule"

    .line 172
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v4

    .line 170
    invoke-static {p1, v2, v3, v4}, Lcom/android/camera/module/ModulesInfo;->registerTimelapsedModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 173
    const-string v2, "TIMELAPSED registed"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    :cond_2
    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "VideoModule"

    .line 179
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v4

    .line 177
    invoke-static {p1, v2, v3, v4}, Lcom/android/camera/module/ModulesInfo;->registerSlowmotionModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 180
    const-string v2, "SLOWMOTION registed"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 184
    :cond_3
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "PhotoModule"

    .line 186
    invoke-virtual {p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v4

    .line 184
    invoke-static {p1, v2, v3, v4}, Lcom/android/camera/module/ModulesInfo;->registerSquareModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V

    .line 187
    const-string v2, "SQUARE registed"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 189
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 214
    return-void
.end method
