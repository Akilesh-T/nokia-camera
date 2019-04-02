.class public Lcom/jmatio/types/MLEmptyArray;
.super Lcom/jmatio/types/MLArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jmatio/types/MLEmptyArray;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jmatio/types/MLEmptyArray;-><init>(Ljava/lang/String;[III)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jmatio/types/MLArray;-><init>(Ljava/lang/String;[III)V

    return-void
.end method
