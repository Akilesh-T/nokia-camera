.class public enum Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->FLOAT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->FLOAT:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "INT64"

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->INT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "UINT64"

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->UINT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "INT32"

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->INT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "FIXED64"

    const/4 v2, 0x5

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->FIXED64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->FIXED32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->BOOL:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType$1;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->STRING:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->STRING:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "UINT32"

    const/16 v2, 0x9

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->UINT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "ENUM"

    const/16 v2, 0xa

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->ENUM:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->ENUM:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "SFIXED32"

    const/16 v2, 0xb

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "SFIXED64"

    const/16 v2, 0xc

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "SINT32"

    const/16 v2, 0xd

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->INT:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SINT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const-string v1, "SINT64"

    const/16 v2, 0xe

    sget-object v3, Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;->LONG:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SINT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->FLOAT:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->INT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->UINT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->INT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->FIXED64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->FIXED32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->BOOL:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->STRING:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->UINT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->ENUM:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SINT32:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->SINT64:Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->javaType:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    iput p4, p0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;ILcom/sina/sinalivesdk/protobuf/WireFormat$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;
    .locals 1

    const-class v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public static values()[Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->javaType:Lcom/sina/sinalivesdk/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public getWireType()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/WireFormat$FieldType;->wireType:I

    return v0
.end method

.method public isPackable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
