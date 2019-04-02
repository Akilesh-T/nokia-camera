.class Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsAnnexbSearch"
.end annotation


# instance fields
.field public match:Z

.field public nb_start_code:I

.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 355
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 357
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p2, "x1"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V

    return-void
.end method
