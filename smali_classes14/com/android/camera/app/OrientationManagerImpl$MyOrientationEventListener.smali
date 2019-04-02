.class Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/OrientationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/OrientationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/OrientationManagerImpl;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    .line 221
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 222
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 226
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 247
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    .line 231
    invoke-static {v2}, Lcom/android/camera/app/OrientationManagerImpl;->access$000(Lcom/android/camera/app/OrientationManagerImpl;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/camera/app/OrientationManagerImpl;->access$100(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 232
    .local v1, "roundedDeviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-static {v2}, Lcom/android/camera/app/OrientationManagerImpl;->access$000(Lcom/android/camera/app/OrientationManagerImpl;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 235
    invoke-static {}, Lcom/android/camera/app/OrientationManagerImpl;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "orientation changed (from:to) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-static {v4}, Lcom/android/camera/app/OrientationManagerImpl;->access$000(Lcom/android/camera/app/OrientationManagerImpl;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-static {v2, v1}, Lcom/android/camera/app/OrientationManagerImpl;->access$002(Lcom/android/camera/app/OrientationManagerImpl;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 239
    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-static {v2}, Lcom/android/camera/app/OrientationManagerImpl;->access$300(Lcom/android/camera/app/OrientationManagerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;

    .line 240
    .local v0, "listener":Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
    iget-object v3, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    invoke-static {v3}, Lcom/android/camera/app/OrientationManagerImpl;->access$400(Lcom/android/camera/app/OrientationManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;-><init>(Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
