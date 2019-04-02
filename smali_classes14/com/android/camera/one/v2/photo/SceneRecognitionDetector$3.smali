.class Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$3;
.super Ljava/lang/Object;
.source "SceneRecognitionDetector.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


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
    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$3;->this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$3;->this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->access$300(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "close"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$3;->this$0:Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->access$002(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .line 58
    return-void
.end method
