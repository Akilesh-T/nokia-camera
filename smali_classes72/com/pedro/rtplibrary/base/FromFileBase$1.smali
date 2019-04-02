.class Lcom/pedro/rtplibrary/base/FromFileBase$1;
.super Ljava/lang/Object;
.source "FromFileBase.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/rtplibrary/base/FromFileBase;->prepareVideo(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/rtplibrary/base/FromFileBase;


# direct methods
.method constructor <init>(Lcom/pedro/rtplibrary/base/FromFileBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/rtplibrary/base/FromFileBase;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/FromFileBase$1;->this$0:Lcom/pedro/rtplibrary/base/FromFileBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase$1;->this$0:Lcom/pedro/rtplibrary/base/FromFileBase;

    invoke-static {v0}, Lcom/pedro/rtplibrary/base/FromFileBase;->access$000(Lcom/pedro/rtplibrary/base/FromFileBase;)Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;->onVideoDecoderFinished()V

    .line 72
    return-void
.end method
