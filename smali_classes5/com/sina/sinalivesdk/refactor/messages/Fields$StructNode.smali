.class public abstract Lcom/sina/sinalivesdk/refactor/messages/Fields$StructNode;
.super Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract normalNodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract structNodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/Fields$StructNode;",
            ">;"
        }
    .end annotation
.end method
