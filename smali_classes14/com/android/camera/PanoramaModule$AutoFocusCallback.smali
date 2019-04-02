.class final Lcom/android/camera/PanoramaModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$AutoFocusCallback;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/PanoramaModule$1;

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule$AutoFocusCallback;-><init>(Lcom/android/camera/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1029
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AutoFocusCallback"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1030
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusResult(Z)V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$AutoFocusCallback;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2200(Lcom/android/camera/PanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule$AutoFocusCallback;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$AutoFocusCallback;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
