.class public Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;
.super Ljava/lang/Object;
.source "CameraMetadataCallbackCreator.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamMetadata"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->getMetadataMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)Ljava/lang/Object;
    .locals 7
    .param p0, "proxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->isMetadataSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    :goto_0
    return-object v2

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v3

    .line 23
    .local v3, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    const-class v4, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 25
    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->getMetadataClazz()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;

    invoke-direct {v5, v3, p0}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;-><init>(Lcom/android/ex/camera2/utils/PlatformUtil$Platform;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    invoke-static {v1, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 39
    .local v2, "object":Ljava/lang/Object;
    goto :goto_0

    .line 40
    .end local v2    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMetadataClazz()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->getMetadataClazzName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_0
    const-class v2, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->getMetadataClazzName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getMetadataClazzName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    .line 48
    .local v0, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_0

    .line 49
    const-string v1, "android.hardware.Camera$CameraMetaDataCallback"

    .line 54
    :goto_0
    return-object v1

    .line 50
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_2

    .line 54
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    :cond_2
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method

.method private static getMetadataMethodName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    .line 59
    .local v0, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_0

    .line 60
    const-string v1, "onCameraMetaData"

    .line 65
    :goto_0
    return-object v1

    .line 61
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_2

    .line 65
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 62
    :cond_2
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method

.method public static getSetMetadataCallbackMethodName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    .line 70
    .local v0, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_0

    .line 71
    const-string v1, "setMetadataCb"

    .line 76
    :goto_0
    return-object v1

    .line 72
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_2

    .line 76
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_2
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method

.method public static isMetadataSupported()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->getMetadataClazz()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
