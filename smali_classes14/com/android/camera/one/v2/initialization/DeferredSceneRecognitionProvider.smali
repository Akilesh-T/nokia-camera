.class public Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;
.super Ljava/lang/Object;
.source "DeferredSceneRecognitionProvider.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;


# instance fields
.field private final mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/ConcurrentState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "sceneRecognitionFeature":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;->mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;

    .line 13
    return-void
.end method


# virtual methods
.method public getAWBGains()[F
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;->mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;->mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;->getAWBGains()[F

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getSCResult()Lcom/android/camera/scenerecognition/SceneClassifyLabel;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;->mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;->mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;->getSCResult()Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    new-array v1, v4, [I

    aput v4, v1, v5

    new-array v2, v4, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-direct {v0, v4, v1, v2}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;-><init>(I[I[F)V

    goto :goto_0
.end method

.method public setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;->mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredSceneRecognitionProvider;->mSceneRecognitionFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;->setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V

    .line 36
    :cond_0
    return-void
.end method
