.class final Lcom/android/camera/ManualModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/camera/ManualModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ManualModule;
    .param p2, "x1"    # Lcom/android/camera/ManualModule$1;

    .prologue
    .line 1052
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/ManualModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1
    .param p1, "moving"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/camera/ManualModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$2900(Lcom/android/camera/ManualModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocusMoving(Z)V

    .line 1056
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusMoving(Z)V

    .line 1057
    return-void
.end method
