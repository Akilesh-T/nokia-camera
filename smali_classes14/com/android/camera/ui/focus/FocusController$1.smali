.class Lcom/android/camera/ui/focus/FocusController$1;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/focus/FocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$000(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$000(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;->getFocusState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$100(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/FaceView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$100(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/focus/FocusController;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Running showPassiveFocusAtCenter()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startPassiveFocus()V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->centerFocusLocation()V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$100(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/FaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$1;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$100(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/FaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    goto :goto_0
.end method
