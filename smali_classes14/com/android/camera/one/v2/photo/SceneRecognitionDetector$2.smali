.class Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$2;
.super Ljava/lang/Object;
.source "SceneRecognitionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$2;->this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$2;->this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->access$000(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$2;->this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->access$000(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$2;->this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->access$200(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    invoke-interface {v1, v0}, Lcom/android/camera/one/OneCamera$SceneRecognitionListener;->onSceneClassifyResult(Lcom/android/camera/scenerecognition/SceneClassifyLabel;)V

    .line 50
    :cond_0
    return-void
.end method
