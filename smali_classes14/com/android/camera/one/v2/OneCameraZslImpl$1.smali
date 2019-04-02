.class Lcom/android/camera/one/v2/OneCameraZslImpl$1;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/util/ListenerCombiner$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$1;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$1;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$000(Lcom/android/camera/one/v2/OneCameraZslImpl;Z)V

    .line 239
    return-void
.end method
