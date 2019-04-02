.class Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "ProTutorialDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ProTutorialDialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/ProTutorialDialogLayout;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    .line 254
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 259
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    .line 264
    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1000(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1100(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    .line 265
    .local v0, "roundedDeviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1000(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$200(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation changed (from:to) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v3}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1000(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1, v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1002(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 271
    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$902(Lcom/android/camera/widget/ProTutorialDialogLayout;I)I

    .line 274
    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$1300(Lcom/android/camera/widget/ProTutorialDialogLayout;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener$1;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener$1;-><init>(Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
