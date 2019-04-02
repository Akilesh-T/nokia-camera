.class public Lcom/google/api/services/youtube/YouTube$Subscriptions;
.super Ljava/lang/Object;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Subscriptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$Subscriptions$List;,
        Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;,
        Lcom/google/api/services/youtube/YouTube$Subscriptions$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 12887
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13122
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12902
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Delete;-><init>(Lcom/google/api/services/youtube/YouTube$Subscriptions;Ljava/lang/String;)V

    .line 12903
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 12904
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/Subscription;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13007
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;-><init>(Lcom/google/api/services/youtube/YouTube$Subscriptions;Ljava/lang/String;Lcom/google/api/services/youtube/model/Subscription;)V

    .line 13008
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 13009
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13117
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;-><init>(Lcom/google/api/services/youtube/YouTube$Subscriptions;Ljava/lang/String;)V

    .line 13118
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 13119
    return-object v0
.end method
