.class final enum Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;
.super Ljava/lang/Enum;
.source "SpenScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field public static final enum BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field public static final enum LEFT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field public static final enum NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field public static final enum RIGHT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field public static final enum TOP:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->LEFT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->RIGHT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->TOP:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->LEFT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->RIGHT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->TOP:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    return-object v0
.end method