.class public Lcom/google/api/services/youtube/YouTube$SuperChatEvents;
.super Ljava/lang/Object;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperChatEvents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 13577
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13597
    return-void
.end method


# virtual methods
.method public list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13592
    new-instance v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;-><init>(Lcom/google/api/services/youtube/YouTube$SuperChatEvents;Ljava/lang/String;)V

    .line 13593
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 13594
    return-object v0
.end method
