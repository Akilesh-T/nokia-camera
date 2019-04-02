.class Lcom/android/camera/PIPVideoUI$2;
.super Ljava/lang/Object;
.source "PIPVideoUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoUI;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/PIPVideoUI$2;->this$0:Lcom/android/camera/PIPVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI$2;->this$0:Lcom/android/camera/PIPVideoUI;

    invoke-static {v0}, Lcom/android/camera/PIPVideoUI;->access$000(Lcom/android/camera/PIPVideoUI;)Lcom/android/camera/PIPVideoController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/PIPVideoController;->onDown(FF)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI$2;->this$0:Lcom/android/camera/PIPVideoUI;

    invoke-static {v0}, Lcom/android/camera/PIPVideoUI;->access$000(Lcom/android/camera/PIPVideoUI;)Lcom/android/camera/PIPVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/PIPVideoController;->onUp()Z

    move-result v0

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
