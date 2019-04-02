.class Lcom/android/camera/processing/imagebackend/ImageBackend$FastThreadFactory;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastThreadFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;


# direct methods
.method private constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$FastThreadFactory;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/processing/imagebackend/ImageBackend;
    .param p2, "x1"    # Lcom/android/camera/processing/imagebackend/ImageBackend$1;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/android/camera/processing/imagebackend/ImageBackend$FastThreadFactory;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 966
    new-instance v0, Lcom/android/camera/async/AndroidPriorityThread;

    const/4 v1, -0x4

    invoke-direct {v0, v1, p1}, Lcom/android/camera/async/AndroidPriorityThread;-><init>(ILjava/lang/Runnable;)V

    .line 967
    .local v0, "t":Ljava/lang/Thread;
    return-object v0
.end method
