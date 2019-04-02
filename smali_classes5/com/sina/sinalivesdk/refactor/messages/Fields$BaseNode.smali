.class public abstract Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/protobuf/IProtoBufferNode;


# instance fields
.field public fieldName:Ljava/lang/String;

.field public fieldNumber:I

.field public isAssignedValue:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;->fieldNumber:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;->fieldNumber:I

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/messages/Fields$BaseNode;->fieldName:Ljava/lang/String;

    return-void
.end method
