.class Lcom/android/camera/BokehHal3Module$19$2$3$1;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module$19$2$3;->onBokehResultChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/camera/BokehHal3Module$19$2$3;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module$19$2$3;I)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/camera/BokehHal3Module$19$2$3;

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->this$3:Lcom/android/camera/BokehHal3Module$19$2$3;

    iput p2, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2061
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->this$3:Lcom/android/camera/BokehHal3Module$19$2$3;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19$2$3;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2092
    :cond_0
    :goto_0
    return-void

    .line 2062
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->this$3:Lcom/android/camera/BokehHal3Module$19$2$3;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19$2$3;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$3000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2064
    const/4 v0, -0x1

    .line 2065
    .local v0, "resourceId":I
    iget v1, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->val$result:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 2067
    :sswitch_0
    const v0, 0x7f08014c

    .line 2089
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2090
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->this$3:Lcom/android/camera/BokehHal3Module$19$2$3;

    iget-object v2, v2, Lcom/android/camera/BokehHal3Module$19$2$3;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v2, v2, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v2, v2, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v2}, Lcom/android/camera/BokehHal3Module;->access$3000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->this$3:Lcom/android/camera/BokehHal3Module$19$2$3;

    iget-object v3, v3, Lcom/android/camera/BokehHal3Module$19$2$3;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v3, v3, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v3, v3, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$3000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module$19$2$3$1;->this$3:Lcom/android/camera/BokehHal3Module$19$2$3;

    iget-object v4, v4, Lcom/android/camera/BokehHal3Module$19$2$3;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v4, v4, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v4, v4, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v4}, Lcom/android/camera/BokehHal3Module;->access$4800(Lcom/android/camera/BokehHal3Module;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 2070
    :sswitch_1
    const v0, 0x7f08014e

    .line 2071
    goto :goto_1

    .line 2073
    :sswitch_2
    const v0, 0x7f08014f

    .line 2074
    goto :goto_1

    .line 2076
    :sswitch_3
    const v0, 0x7f08014d

    .line 2077
    goto :goto_1

    .line 2083
    :sswitch_4
    const v0, 0x7f08014b

    .line 2084
    goto :goto_1

    .line 2065
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x21 -> :sswitch_4
        0x31 -> :sswitch_3
    .end sparse-switch
.end method
