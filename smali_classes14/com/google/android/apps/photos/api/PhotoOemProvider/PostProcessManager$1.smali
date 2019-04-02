.class Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;
.super Ljava/lang/Object;
.source "PostProcessManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;->this$0:Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

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
    .line 63
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1$1;-><init>(Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$1;Ljava/lang/Runnable;)V

    return-object v0
.end method
