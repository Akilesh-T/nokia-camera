.class Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$1;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$1;->this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$1$1;-><init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$1;Ljava/lang/Runnable;)V

    return-object v0
.end method
