.class Lcom/android/camera/burst/ZSLBurstTakerImpl$1;
.super Ljava/lang/Object;
.source "ZSLBurstTakerImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/ZSLBurstTakerImpl;->startBurst(Lcom/android/camera/burst/BurstController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/ZSLBurstTakerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/ZSLBurstTakerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/ZSLBurstTakerImpl;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/camera/burst/ZSLBurstTakerImpl$1;->this$0:Lcom/android/camera/burst/ZSLBurstTakerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/burst/ZSLBurstTakerImpl$1;->this$0:Lcom/android/camera/burst/ZSLBurstTakerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/ZSLBurstTakerImpl;->access$000(Lcom/android/camera/burst/ZSLBurstTakerImpl;)Lcom/android/camera/async/Updatable;

    move-result-object v0

    sget v1, Lcom/android/camera/one/v2/OneCameraFactory;->DEFAULT_RING_BUFFER_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 139
    return-void
.end method
