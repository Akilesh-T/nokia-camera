.class public Lcom/google/api/services/youtube/YouTube$Watermarks;
.super Ljava/lang/Object;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Watermarks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;,
        Lcom/google/api/services/youtube/YouTube$Watermarks$Set;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 16069
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Watermarks;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16284
    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;Lcom/google/api/services/youtube/model/InvideoBranding;)Lcom/google/api/services/youtube/YouTube$Watermarks$Set;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16084
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Watermarks$Set;-><init>(Lcom/google/api/services/youtube/YouTube$Watermarks;Ljava/lang/String;Lcom/google/api/services/youtube/model/InvideoBranding;)V

    .line 16085
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Watermarks;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 16086
    return-object v0
.end method

.method public set(Ljava/lang/String;Lcom/google/api/services/youtube/model/InvideoBranding;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/youtube/YouTube$Watermarks$Set;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16108
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Set;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/youtube/YouTube$Watermarks$Set;-><init>(Lcom/google/api/services/youtube/YouTube$Watermarks;Ljava/lang/String;Lcom/google/api/services/youtube/model/InvideoBranding;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 16109
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Watermarks;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 16110
    return-object v0
.end method

.method public unset(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16279
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;-><init>(Lcom/google/api/services/youtube/YouTube$Watermarks;Ljava/lang/String;)V

    .line 16280
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Watermarks;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 16281
    return-object v0
.end method
