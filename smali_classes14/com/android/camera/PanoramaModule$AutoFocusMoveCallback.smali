.class final Lcom/android/camera/PanoramaModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/PanoramaModule$1;

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1
    .param p1, "moving"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocusMoving(Z)V

    .line 627
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusMoving(Z)V

    .line 628
    return-void
.end method
