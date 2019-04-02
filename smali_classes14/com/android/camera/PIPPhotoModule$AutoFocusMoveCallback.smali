.class final Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field tag:I

.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoModule;I)V
    .locals 0
    .param p2, "tag"    # I

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    iput p2, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;->tag:I

    .line 962
    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1
    .param p1, "moving"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 969
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusMoving(Z)V

    .line 970
    return-void
.end method
