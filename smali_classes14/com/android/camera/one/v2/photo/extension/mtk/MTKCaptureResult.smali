.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;
.super Ljava/lang/Object;
.source "MTKCaptureResult.java"


# static fields
.field public static final MTK_BOKEH_STAT:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MTKCaptureResult"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 15
    const-string v0, "com.mediatek.vsdoffeature.vsdofFeatureWarning"

    const-class v1, [I

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;->createCustomizeResultKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;->MTK_BOKEH_STAT:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCustomizeResultKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/hardware/camera2/CaptureResult$Key;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 18
    const-class v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 19
    .local v0, "c":Ljava/lang/Class;
    new-array v5, v6, [Ljava/lang/Class;

    .line 20
    .local v5, "params":[Ljava/lang/Class;
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    .line 21
    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v8

    .line 22
    const/4 v1, 0x0

    .line 24
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 26
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 27
    .local v4, "paramObjs":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p0, v4, v6

    .line 28
    const/4 v6, 0x1

    aput-object p1, v4, v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 32
    .local v2, "customizekey":Landroid/hardware/camera2/CaptureResult$Key;
    if-eqz v2, :cond_0

    .line 33
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CaptureResult.Key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", string : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .end local v2    # "customizekey":Landroid/hardware/camera2/CaptureResult$Key;
    .end local v4    # "paramObjs":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 36
    .restart local v4    # "paramObjs":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 37
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get custom key fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "paramObjs":[Ljava/lang/Object;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 39
    :catch_1
    move-exception v3

    .line 40
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConstructor fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method
