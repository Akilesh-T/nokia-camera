.class Lcom/android/camera/ManualProModeUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "ManualProModeUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualProModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualProModeUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/ManualProModeUI;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/camera/ManualProModeUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ManualProModeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ManualProModeUI;
    .param p2, "x1"    # Lcom/android/camera/ManualProModeUI$1;

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/android/camera/ManualProModeUI$ZoomChangeListener;-><init>(Lcom/android/camera/ManualProModeUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$ZoomChangeListener;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$000(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ManualController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ManualController;->onZoomChanged(F)V

    .line 964
    return-void
.end method
