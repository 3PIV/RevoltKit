//
// DirectMessagingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DirectMessagingAPI {

    /**
     Fetch Direct Message Channels
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersDmsGet(apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: [AnyOfobjectobjectModel]?, _ error: Error?) -> Void)) {
        usersDmsGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Direct Message Channels
     - GET /users/dms
     - This fetches your direct messages, including any DM and group DM conversations.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - returns: RequestBuilder<[AnyOfobjectobjectModel]> 
     */
    open class func usersDmsGetWithRequestBuilder() -> RequestBuilder<[AnyOfobjectobjectModel]> {
        let localVariablePath = "/users/dms"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AnyOfobjectobjectModel]>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Open Direct Message
     
     - parameter user: (path) User ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersUserDmGet(user: UserIDModel, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: DirectMessageChannelModel?, _ error: Error?) -> Void)) {
        usersUserDmGetWithRequestBuilder(user: user).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Open Direct Message
     - GET /users/:user/dm
     - Open a DM with another user.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter user: (path) User ID 
     - returns: RequestBuilder<DirectMessageChannelModel> 
     */
    open class func usersUserDmGetWithRequestBuilder(user: UserIDModel) -> RequestBuilder<DirectMessageChannelModel> {
        var localVariablePath = "/users/:user/dm"
        let userPreEscape = "\(APIHelper.mapValueToPathItem(user))"
        let userPostEscape = userPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user}", with: userPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DirectMessageChannelModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
