.class Lcom/android/camera/one/v2/photo/BokehResultDetector$2;
.super Ljava/lang/Object;
.source "BokehResultDetector.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/BokehResultDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/BokehResultDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/photo/BokehResultDetector;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector$2;->this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector$2;->this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/BokehResultDetector;->access$200(Lcom/android/camera/one/v2/photo/BokehResultDetector;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "close"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector$2;->this$0:Lcom/android/camera/one/v2/photo/BokehResultDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/BokehResultDetector;->access$002(Lcom/android/camera/one/v2/photo/BokehResultDetector;Lcom/android/camera/one/v2/photo/BokehResultListener;)Lcom/android/camera/one/v2/photo/BokehResultListener;

    .line 46
    return-void
.end method
