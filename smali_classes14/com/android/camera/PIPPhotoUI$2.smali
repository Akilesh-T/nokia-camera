.class Lcom/android/camera/PIPPhotoUI$2;
.super Ljava/lang/Object;
.source "PIPPhotoUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPPhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPPhotoUI;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/PIPPhotoUI$2;->this$0:Lcom/android/camera/PIPPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI$2;->this$0:Lcom/android/camera/PIPPhotoUI;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoUI;->access$000(Lcom/android/camera/PIPPhotoUI;)Lcom/android/camera/PIPPhotoController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/PIPPhotoController;->onDown(FF)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI$2;->this$0:Lcom/android/camera/PIPPhotoUI;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoUI;->access$000(Lcom/android/camera/PIPPhotoUI;)Lcom/android/camera/PIPPhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/PIPPhotoController;->onUp()Z

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
