.class public Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;
.super Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;


# instance fields
.field public content_type:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    const/4 v1, 0x1

    const-string v2, "content_type"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader$Auxiliaries;->content_type:Lcom/sina/sinalivesdk/refactor/messages/Fields$IntegerNode;

    return-void
.end method


# virtual methods
.method public computeSize(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeTag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V
    .locals 0

    return-void
.end method
