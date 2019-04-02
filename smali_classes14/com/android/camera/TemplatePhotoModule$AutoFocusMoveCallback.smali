.class final Lcom/android/camera/TemplatePhotoModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p2, "x1"    # Lcom/android/camera/TemplatePhotoModule$1;

    .prologue
    .line 968
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1
    .param p1, "moving"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$3800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocusMoving(Z)V

    .line 974
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusMoving(Z)V

    .line 975
    return-void
.end method
