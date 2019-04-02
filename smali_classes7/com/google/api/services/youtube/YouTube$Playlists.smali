.class public Lcom/google/api/services/youtube/YouTube$Playlists;
.super Ljava/lang/Object;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Playlists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$Playlists$Update;,
        Lcom/google/api/services/youtube/YouTube$Playlists$List;,
        Lcom/google/api/services/youtube/YouTube$Playlists$Insert;,
        Lcom/google/api/services/youtube/YouTube$Playlists$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 10758
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Playlists;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11535
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Playlists$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10773
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Playlists$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Playlists$Delete;-><init>(Lcom/google/api/services/youtube/YouTube$Playlists;Ljava/lang/String;)V

    .line 10774
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Playlists;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 10775
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/Playlist;)Lcom/google/api/services/youtube/YouTube$Playlists$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10922
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Playlists$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Playlists$Insert;-><init>(Lcom/google/api/services/youtube/YouTube$Playlists;Ljava/lang/String;Lcom/google/api/services/youtube/model/Playlist;)V

    .line 10923
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Playlists;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 10924
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Playlists$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11140
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Playlists$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Playlists$List;-><init>(Lcom/google/api/services/youtube/YouTube$Playlists;Ljava/lang/String;)V

    .line 11141
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Playlists;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 11142
    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/youtube/model/Playlist;)Lcom/google/api/services/youtube/YouTube$Playlists$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11530
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Playlists$Update;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Playlists$Update;-><init>(Lcom/google/api/services/youtube/YouTube$Playlists;Ljava/lang/String;Lcom/google/api/services/youtube/model/Playlist;)V

    .line 11531
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Playlists;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 11532
    return-object v0
.end method
