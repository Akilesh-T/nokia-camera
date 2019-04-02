.class Lcom/android/camera/PIPVideoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PIPVideoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/PIPVideoUI;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/camera/PIPVideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PIPVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PIPVideoUI;Lcom/android/camera/PIPVideoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PIPVideoUI;
    .param p2, "x1"    # Lcom/android/camera/PIPVideoUI$1;

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/android/camera/PIPVideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PIPVideoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PIPVideoUI;

    invoke-static {v0}, Lcom/android/camera/PIPVideoUI;->access$000(Lcom/android/camera/PIPVideoUI;)Lcom/android/camera/PIPVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/PIPVideoController;->onZoomChanged(F)V

    .line 392
    return-void
.end method
