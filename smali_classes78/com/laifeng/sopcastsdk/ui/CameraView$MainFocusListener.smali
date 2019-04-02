.class Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/ui/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;


# direct methods
.method private constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraView;Lcom/laifeng/sopcastsdk/ui/CameraView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;
    .param p2, "x1"    # Lcom/laifeng/sopcastsdk/ui/CameraView$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V

    return-void
.end method


# virtual methods
.method public onFocusReturns(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$202(Lcom/laifeng/sopcastsdk/ui/CameraView;Z)Z

    .line 140
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$300(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setFocusImage(Z)V

    .line 141
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$300(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->requestLayout()V

    .line 143
    return-void
.end method

.method public onFocusStart()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$202(Lcom/laifeng/sopcastsdk/ui/CameraView;Z)Z

    .line 132
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$300(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$300(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->animateWorking(J)V

    .line 134
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->requestLayout()V

    .line 135
    return-void
.end method
