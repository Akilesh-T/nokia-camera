.class Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;
.super Ljava/lang/Object;
.source "OrientationManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

.field final synthetic val$listener:Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;

.field final synthetic val$roundedDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;->this$1:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    iput-object p2, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;->val$listener:Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;

    iput-object p3, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;->val$roundedDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;->val$listener:Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;

    iget-object v1, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;->this$1:Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;

    iget-object v1, v1, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener;->this$0:Lcom/android/camera/app/OrientationManagerImpl;

    iget-object v2, p0, Lcom/android/camera/app/OrientationManagerImpl$MyOrientationEventListener$1;->val$roundedDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;->onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    .line 244
    return-void
.end method
