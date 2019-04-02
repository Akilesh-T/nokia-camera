.class Lcom/android/camera/SquareModule$22$6$2;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$SceneModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$22$6;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/SquareModule$22$6;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$22$6;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/SquareModule$22$6;

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/android/camera/SquareModule$22$6$2;->this$2:Lcom/android/camera/SquareModule$22$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)V
    .locals 1
    .param p1, "sceneMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$2;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0, p1}, Lcom/android/camera/SquareModule;->access$5402(Lcom/android/camera/SquareModule;Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 2470
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$2;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$5500(Lcom/android/camera/SquareModule;)V

    .line 2471
    return-void
.end method
