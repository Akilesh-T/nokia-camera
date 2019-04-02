.class Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$2;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->add()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

.field final synthetic val$media:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;


# direct methods
.method constructor <init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$2;->this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    iput-object p2, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$2;->val$media:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$2;->this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$2;->val$media:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    invoke-static {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->access$000(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V

    .line 120
    return-void
.end method
