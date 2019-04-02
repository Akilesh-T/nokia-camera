.class Lcom/android/camera/CameraActivity$30;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->showUndoDeletionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 4390
    iput-object p1, p0, Lcom/android/camera/CameraActivity$30;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 4394
    iget-object v0, p0, Lcom/android/camera/CameraActivity$30;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v2}, Lcom/android/camera/CameraActivity;->access$7302(Lcom/android/camera/CameraActivity;Z)Z

    .line 4398
    :cond_0
    :goto_0
    return v1

    .line 4395
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 4396
    iget-object v0, p0, Lcom/android/camera/CameraActivity$30;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$7302(Lcom/android/camera/CameraActivity;Z)Z

    goto :goto_0
.end method
