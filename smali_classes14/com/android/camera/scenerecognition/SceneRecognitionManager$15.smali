.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$15;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager;->initManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$15;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$15;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$2000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    .line 687
    return-void
.end method
