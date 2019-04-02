.class Lcom/android/camera/ui/focus/FocusController$2;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/focus/FocusController;

.field final synthetic val$viewX:I

.field final synthetic val$viewY:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusController$2;->this$0:Lcom/android/camera/ui/focus/FocusController;

    iput p2, p0, Lcom/android/camera/ui/focus/FocusController$2;->val$viewX:I

    iput p3, p0, Lcom/android/camera/ui/focus/FocusController$2;->val$viewY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$2;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$000(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$2;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$000(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;->getFocusState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/android/camera/ui/focus/FocusController;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running showPassiveFocusAt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/focus/FocusController$2;->val$viewX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/focus/FocusController$2;->val$viewY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$2;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startPassiveFocus()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$2;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/focus/FocusController$2;->val$viewX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/focus/FocusController$2;->val$viewY:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusRing;->setFocusLocation(FF)V

    goto :goto_0
.end method
