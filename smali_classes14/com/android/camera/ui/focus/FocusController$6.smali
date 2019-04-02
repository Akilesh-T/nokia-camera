.class Lcom/android/camera/ui/focus/FocusController$6;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusController;->setFocusRatio(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/focus/FocusController;

.field final synthetic val$ratio:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusController;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusController$6;->this$0:Lcom/android/camera/ui/focus/FocusController;

    iput p2, p0, Lcom/android/camera/ui/focus/FocusController$6;->val$ratio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$6;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isPassiveFocusRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$6;->this$0:Lcom/android/camera/ui/focus/FocusController;

    .line 183
    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isActiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$6;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/focus/FocusController$6;->val$ratio:F

    invoke-interface {v0, v1}, Lcom/android/camera/ui/focus/FocusRing;->setRadiusRatio(F)V

    .line 186
    :cond_1
    return-void
.end method
