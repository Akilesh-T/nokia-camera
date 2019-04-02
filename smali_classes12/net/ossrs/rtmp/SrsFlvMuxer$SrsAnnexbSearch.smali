.class Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsAnnexbSearch"
.end annotation


# instance fields
.field public match:Z

.field public nb_start_code:I

.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 337
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 339
    iput-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p2, "x1"    # Lnet/ossrs/rtmp/SrsFlvMuxer$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V

    return-void
.end method
