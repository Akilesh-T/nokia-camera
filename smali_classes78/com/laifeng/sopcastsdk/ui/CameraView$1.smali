.class Lcom/laifeng/sopcastsdk/ui/CameraView$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/ui/CameraView;->changeFocusModeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$300(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->resetPosition()V

    .line 195
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$400(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->refocus()V

    .line 196
    return-void
.end method
