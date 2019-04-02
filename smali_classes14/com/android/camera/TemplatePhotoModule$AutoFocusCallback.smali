.class final Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p2, "x1"    # Lcom/android/camera/TemplatePhotoModule$1;

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 956
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusResult(Z)V

    .line 957
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$1100(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v1}, Lcom/android/camera/TemplatePhotoModule;->access$3600(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/TemplatePhotoModule;->mAutoFocusTime:J

    .line 962
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    iget-wide v2, v2, Lcom/android/camera/TemplatePhotoModule;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms   focused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/TemplatePhotoModule;->access$3700(Lcom/android/camera/TemplatePhotoModule;I)V

    .line 964
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$3800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
