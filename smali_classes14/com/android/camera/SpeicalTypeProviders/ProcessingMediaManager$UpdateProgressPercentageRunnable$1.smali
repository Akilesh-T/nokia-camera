.class Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable$1;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;


# direct methods
.method constructor <init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable$1;->this$1:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable$1;->this$1:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;

    iget-object v0, v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable$1;->this$1:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;

    invoke-static {v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->access$200(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;)Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->access$000(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V

    .line 179
    return-void
.end method
