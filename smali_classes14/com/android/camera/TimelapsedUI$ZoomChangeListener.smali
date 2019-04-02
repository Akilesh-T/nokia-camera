.class Lcom/android/camera/TimelapsedUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "TimelapsedUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TimelapsedUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapsedUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/TimelapsedUI;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/TimelapsedUI$ZoomChangeListener;->this$0:Lcom/android/camera/TimelapsedUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/TimelapsedUI;Lcom/android/camera/TimelapsedUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/TimelapsedUI;
    .param p2, "x1"    # Lcom/android/camera/TimelapsedUI$1;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/camera/TimelapsedUI$ZoomChangeListener;-><init>(Lcom/android/camera/TimelapsedUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI$ZoomChangeListener;->this$0:Lcom/android/camera/TimelapsedUI;

    invoke-static {v0}, Lcom/android/camera/TimelapsedUI;->access$000(Lcom/android/camera/TimelapsedUI;)Lcom/android/camera/TimelapsedController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/TimelapsedController;->onZoomChanged(F)V

    .line 283
    return-void
.end method
