.class public final enum Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum BOOLEAN:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum DOUBLE:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum ENUM:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum FLOAT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum MESSAGE:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field public static final enum STRING:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->FLOAT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->STRING:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "ENUM"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->ENUM:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const-string v1, "MESSAGE"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->FLOAT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->STRING:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->ENUM:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;
    .locals 1

    const-class v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public static values()[Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-virtual {v0}, [Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    return-object v0
.end method


# virtual methods
.method final getDefaultDefault()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method
