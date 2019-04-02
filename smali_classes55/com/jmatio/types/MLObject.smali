.class public Lcom/jmatio/types/MLObject;
.super Lcom/jmatio/types/MLArray;


# instance fields
.field private final className:Ljava/lang/String;

.field private final o:Lcom/jmatio/types/MLStructure;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jmatio/types/MLStructure;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jmatio/types/MLArray;-><init>(Ljava/lang/String;[III)V

    iput-object p3, p0, Lcom/jmatio/types/MLObject;->o:Lcom/jmatio/types/MLStructure;

    iput-object p2, p0, Lcom/jmatio/types/MLObject;->className:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Lcom/jmatio/types/MLStructure;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLObject;->o:Lcom/jmatio/types/MLStructure;

    return-object v0
.end method
