.class Lcom/android/camera/panorama/PanoramaBurstTakerImpl$2;
.super Ljava/lang/Object;
.source "PanoramaBurstTakerImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->startBurst(Lcom/android/camera/burst/BurstController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

.field final synthetic val$isPanoramaEnd:Lcom/android/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaBurstTakerImpl;Lcom/android/camera/async/ConcurrentState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$2;->this$0:Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

    iput-object p2, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$2;->val$isPanoramaEnd:Lcom/android/camera/async/ConcurrentState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$2;->val$isPanoramaEnd:Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
